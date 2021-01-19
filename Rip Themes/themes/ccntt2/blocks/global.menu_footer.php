<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES ., JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Jan 17, 2011 11:34:27 AM
 */

if (!defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (!nv_function_exists('nv_menu_bootstrapegova')) {
    function nv_menu_bootstrapegova_config($module, $data_block, $lang_block)
    {
        global $nv_Cache;
        $html = '';
        $html .= "<div class=\"form-group\">";
        $html .= "	<label class=\"control-label col-sm-6\">" . $lang_block['menu'] . ":</label>";
        $html .= "	<div class=\"col-sm-9\"><select name=\"menuid\" class=\"form-control\">\n";

        $sql = "SELECT * FROM " . NV_PREFIXLANG . "_menu ORDER BY id DESC";
        // Module menu của hệ thống không ảo hóa, do đó chỉ định cache trực tiếp vào module tránh lỗi khi gọi file từ giao diện
        $list = $nv_Cache->db($sql, 'id', 'menu');
        foreach ($list as $l) {
            $sel = ($data_block['menuid'] == $l['id']) ? ' selected' : '';
            $html .= "<option value=\"" . $l['id'] . "\" " . $sel . ">" . $l['title'] . "</option>\n";
        }

        $html .= "	</select></div>\n";
        $html .= "</div>";






        return $html;
    }

    /**
     * nv_menu_bootstrapegova_config_submit()
     *
     * @param mixed $module
     * @param mixed $lang_block
     * @return
     */
    function nv_menu_bootstrapegova_config_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['menuid'] = $nv_Request->get_int('menuid', 'post', 0);
        $return['config']['title_length'] = $nv_Request->get_int('config_title_length', 'post', 0);
        $return['config']['submenu_width'] = $nv_Request->get_int('config_submenu_width', 'post', 0);
        $return['config']['wraptext'] = $nv_Request->get_int('config_wraptext', 'post', 0);
        return $return;
    }

    /**
     * nv_menu_bootstrapegova_check_current()
     *
     * @param mixed $url
     * @param integer $type
     * @return
     *
     */
    function nv_menu_bootstrapegova_check_current($url, $type = 0)
    {
        global $home, $client_info, $global_config;

        // Chinh xac tuyet doi
        if ($client_info['selfurl'] == $url) {
            return true;
        }

        if ($home and ($url == nv_url_rewrite(NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA) or $url == NV_BASE_SITEURL . 'index.php' or $url == NV_BASE_SITEURL)) {
            return true;
        } elseif ($url != NV_BASE_SITEURL) {
            $_curr_url = NV_BASE_SITEURL . str_replace($global_config['site_url'] . '/', '', $client_info['selfurl']);
            if ($type == 2) {
                if (preg_match('#' . preg_quote($url, '#') . '#', $_curr_url)) {
                    return true;
                }
            } elseif ($type == 1) {
                if (preg_match('#^' . preg_quote($url, '#') . '#', $_curr_url)) {
                    return true;
                }
            } elseif ($_curr_url == $url) {
                return true;
            }
        }
        return false;
    }

    /**
     * nv_menu_bootstrapegova()
     *
     * @param mixed $block_config
     * @return
     *
     */
    function nv_menu_bootstrapegova($block_config)
    {
        global $nv_Cache, $global_config, $site_mods, $module_info, $module_name, $module_file, $module_data, $lang_global, $catid, $home;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.menu_footer.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.menu_footer.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $array_menu = array();
        $sql = 'SELECT id, parentid, title, link, icon, note, subitem, groups_view, module_name, op, target, css, active_type FROM ' . NV_PREFIXLANG . '_menu_rows WHERE status=1 AND mid = ' . $block_config['menuid'] . ' ORDER BY weight ASC';
        $list = $nv_Cache->db($sql, '', 'menu');
        foreach ($list as $row) {
            if (nv_user_in_groups($row['groups_view'])) {
                switch ($row['target']) {
                    case 1:
                        $row['target'] = '';
                        break;
                    case 3:
                        $row['target'] = ' onclick="window.open(this.href,\'targetWindow\',\'toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=yes,\');return false;"';
                        break;
                    default:
                        $row['target'] = ' onclick="this.target=\'_blank\'"';
                }

                $array_menu[$row['parentid']][$row['id']] = array(
                    'id' => $row['id'],
                    'title' => $row['title'],
                    'title_trim' => nv_clean60($row['title'], $block_config['title_length']),
                    'target' => $row['target'],
                    'note' => empty($row['note']) ? $row['title'] : $row['note'],
                    'link' => nv_url_rewrite(nv_unhtmlspecialchars($row['link']), true),
                    'icon' => (empty($row['icon'])) ? '' : NV_BASE_SITEURL . NV_UPLOADS_DIR . '/menu/' . $row['icon'],
                    'css' => $row['css'],
                    'active_type' => $row['active_type']
                );
            }
        }

        $xtpl = new XTemplate('global.menu_footer.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('LANG', $lang_global);
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
        $xtpl->assign('BLOCK_THEME', $block_theme);
        $xtpl->assign('THEME_SITE_HREF', NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA);
        $xtpl->assign('ALLOW_WRAP_SUBMENU', empty($block_config['wraptext']) ? ' ellipsissub' : ' allowrwap');

        // Search form variables
        $xtpl->assign('NV_MAX_SEARCH_LENGTH', NV_MAX_SEARCH_LENGTH);
        $xtpl->assign('NV_MIN_SEARCH_LENGTH', NV_MIN_SEARCH_LENGTH);

        if (!$global_config['rewrite_enable']) {
            $xtpl->assign('NV_LANG_VARIABLE', NV_LANG_VARIABLE);
            $xtpl->assign('NV_LANG_DATA', NV_LANG_DATA);
            $xtpl->assign('NV_NAME_VARIABLE', NV_NAME_VARIABLE);
            $xtpl->assign('THEME_SEARCH_URL', NV_BASE_SITEURL . 'index.php');
            $xtpl->parse('main.no_rewrite');
        } else {
            $xtpl->assign('THEME_SEARCH_URL', nv_url_rewrite(NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=seek', true));
        }

        if (!empty($array_menu)) {
            foreach ($array_menu[0] as $id => $item) {
                $classcurrent = array();
                $submenu_active = array();
                if (isset($array_menu[$id])) {
                    $classcurrent[] = 'dropdown';
                    $submenu = nv_get_bootstrapegova_submenu($id, $array_menu, $submenu_active, $block_theme, $block_config);
                    $xtpl->assign('SUB', $submenu);
                    $xtpl->parse('main.footer_menu.sub');
                    $xtpl->parse('main.footer_menu.has_sub');
                }
                if (nv_menu_bootstrapegova_check_current($item['link'], $item['active_type'])) {
                    $classcurrent[] = 'active';
                } elseif (!empty($submenu_active)) {
                    $classcurrent[] = 'active';
                }
                if (!empty($item['css'])) {
                    $classcurrent[] = $item['css'];
                }
                $item['current'] = empty($classcurrent) ? '' : ' class="' . (implode(' ', $classcurrent)) . '"';

                if (nv_menu_bootstrapegova_check_current($item['link'], $item['active_type'])) {
                    $classcurrent[] = 'active';
                }

                $xtpl->assign('FOOTER_MENU', $item);
                if (!empty($item['icon'])) {
                    $xtpl->parse('main.footer_menu.icon');
                }
                $xtpl->parse('main.footer_menu');
            }
        }

        $xtpl->parse('main');
        return $xtpl->text('main');
    }

    /**
     * @param int $id
     * @param array $array_menu
     * @param bool $submenu_active
     * @param string $block_theme
     * @return string
     */
    function nv_get_bootstrapegova_submenu($id, $array_menu, &$submenu_active, $block_theme, $block_config)
    {
        $xtpl = new XTemplate('global.menu_footer', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/menu');

        if (!empty($array_menu[$id])) {
            foreach ($array_menu[$id] as $sid => $smenu) {
                if (nv_menu_bootstrapegova_check_current($smenu['link'], $smenu['active_type'])) {
                    $submenu_active[] = $id;
                }
                $submenu = '';
                if (isset($array_menu[$sid])) {
                    $submenu = nv_get_bootstrapegova_submenu($sid, $array_menu, $submenu_active, $block_theme, $block_config);
                    $xtpl->assign('SUB', $submenu);
                    $xtpl->parse('submenu.loop.item');
                }
                $xtpl->assign('SUBMENU', $smenu);
                if (!empty($submenu)) {
                    $xtpl->parse('submenu.loop.submenu');
                }
                if (!empty($smenu['icon'])) {
                    $xtpl->parse('submenu.loop.icon');
                }
                if (!empty($block_config['submenu_width']) and $block_config['submenu_width'] > 0) {
                    $xtpl->assign('SUBMENU_WIDTH', $block_config['submenu_width']);
                    $xtpl->parse('submenu.loop.submenu_width');
                }
                $xtpl->parse('submenu.loop');
            }
            $xtpl->parse('submenu');
        }
        return $xtpl->text('submenu');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_menu_bootstrapegova($block_config);
}