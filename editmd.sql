/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : editmd

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 10/01/2020 16:42:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mdContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `htmlContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '标题', 'mdcontent', 'htmlContent');
INSERT INTO `article` VALUES (2, '文章标题', '            ### Settings\n          \n\nqwe', '<pre><code>        ### Settings\n</code></pre><p>qwe</p>\n');
INSERT INTO `article` VALUES (3, '文章标题', '\n# 月夜\n**更深月色半人家，北斗阑干南斗斜。\n今夜偏知春气暖，虫声新透绿窗纱。**\n###### --唐诗三百首全集', '<h1 id=\"h1-u6708u591C\"><a name=\"月夜\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>月夜</h1><p><strong>更深月色半人家，北斗阑干南斗斜。<br>今夜偏知春气暖，虫声新透绿窗纱。</strong></p>\n<h6 id=\"h6--\"><a name=\"—唐诗三百首全集\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>—唐诗三百首全集</h6>');
INSERT INTO `article` VALUES (4, '文章标题', '# 你好\n\n这是一~~段话~~\n- 第一\n- 第2\n- 第3\n\n1. 1\n1. 3\n1. 3\n\n2020-01-10 15:11:43 星期五\n:smiley: :angry:\n\n\n[========]\n\n------------\n\n\n', '<h1 id=\"h1-u4F60u597D\"><a name=\"你好\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>你好</h1><p>这是一<del>段话</del></p>\n<ul>\n<li>第一</li><li>第2</li><li>第3</li></ul>\n<ol>\n<li>1</li><li>3</li><li>3</li></ol>\n<p>2020-01-10 15&#58;11&#58;43 星期五<br><img src=\"https://www.webpagefx.com/tools/emoji-cheat-sheet/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> <img src=\"https://www.webpagefx.com/tools/emoji-cheat-sheet/graphics/emojis/angry.png\" class=\"emoji\" title=\"&#58;angry&#58;\" alt=\"&#58;angry&#58;\" /></p>\n<hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><hr>\n');
INSERT INTO `article` VALUES (5, '文章标题', '**将进酒**\n> 朝代：唐代 作者：李白\n\n    君不见黄河之水天上来，奔流到海不复回。\n    君不见高堂明镜悲白发，朝如青丝暮成雪。\n    人生得意须尽欢，莫使金樽空对月。\n    天生我材必有用，千金散尽还复来。\n    烹羊宰牛且为乐，会须一饮三百杯。\n    岑夫子，丹丘生，将进酒，君莫停。\n    与君歌一曲，请君为我侧耳听。\n    钟鼓馔玉不足贵，但愿长醉不愿醒。\n    古来圣贤皆寂寞，惟有饮者留其名。\n    陈王昔时宴平乐，斗酒十千恣欢谑。\n    主人何为言少钱，径须沽取对君酌。\n    五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。\n	\n\n![图片](/upfile/1578644679767.png \"图片\")', '<p><strong>将进酒</strong></p>\n<blockquote>\n<p>朝代：唐代 作者：李白</p>\n</blockquote>\n<pre><code>君不见黄河之水天上来，奔流到海不复回。\n君不见高堂明镜悲白发，朝如青丝暮成雪。\n人生得意须尽欢，莫使金樽空对月。\n天生我材必有用，千金散尽还复来。\n烹羊宰牛且为乐，会须一饮三百杯。\n岑夫子，丹丘生，将进酒，君莫停。\n与君歌一曲，请君为我侧耳听。\n钟鼓馔玉不足贵，但愿长醉不愿醒。\n古来圣贤皆寂寞，惟有饮者留其名。\n陈王昔时宴平乐，斗酒十千恣欢谑。\n主人何为言少钱，径须沽取对君酌。\n五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。\n</code></pre><p><img src=\"/upfile/1578644679767.png\" alt=\"图片\" title=\"图片\"></p>\n');
INSERT INTO `article` VALUES (6, '文章标题', '\n<font face=\"STCAIYUN\">我是华文彩云</font>\n<font color=#5F9EA0 size=72 >color=gray</font>\n\n**将进酒**\n> 朝代：唐代 作者：李白\n\n    君不见黄河之水天上来，奔流到海不复回。\n    君不见高堂明镜悲白发，朝如青丝暮成雪。\n    人生得意须尽欢，莫使金樽空对月。\n    天生我材必有用，千金散尽还复来。\n    烹羊宰牛且为乐，会须一饮三百杯。\n    岑夫子，丹丘生，将进酒，君莫停。\n    与君歌一曲，请君为我侧耳听。\n    钟鼓馔玉不足贵，但愿长醉不愿醒。\n    古来圣贤皆寂寞，惟有饮者留其名。\n    陈王昔时宴平乐，斗酒十千恣欢谑。\n    主人何为言少钱，径须沽取对君酌。\n    五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。\n	\n\n![图片](/upfile/1578644679767.png \"图片\")\n\n\n\n\n\n\n| 项目        | 价格   |  数量  |\n| --------   | -----:  | :----:  |\n| 计算机      | $1600   |   5     |\n| 手机        |   $12   |   12   |\n| 管线        |    $1    |  234  |', '<font face=\"STCAIYUN\">我是华文彩云</font><br><font color=#5F9EA0 size=72 >color=gray</font>\n\n<p><strong>将进酒</strong></p>\n<blockquote>\n<p>朝代：唐代 作者：李白</p>\n</blockquote>\n<pre><code>君不见黄河之水天上来，奔流到海不复回。\n君不见高堂明镜悲白发，朝如青丝暮成雪。\n人生得意须尽欢，莫使金樽空对月。\n天生我材必有用，千金散尽还复来。\n烹羊宰牛且为乐，会须一饮三百杯。\n岑夫子，丹丘生，将进酒，君莫停。\n与君歌一曲，请君为我侧耳听。\n钟鼓馔玉不足贵，但愿长醉不愿醒。\n古来圣贤皆寂寞，惟有饮者留其名。\n陈王昔时宴平乐，斗酒十千恣欢谑。\n主人何为言少钱，径须沽取对君酌。\n五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。\n</code></pre><p><img src=\"/upfile/1578644679767.png\" alt=\"图片\" title=\"图片\"></p>\n<table>\n<thead>\n<tr>\n<th>项目</th>\n<th style=\"text-align:right\">价格</th>\n<th style=\"text-align:center\">数量</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>计算机</td>\n<td style=\"text-align:right\">$1600</td>\n<td style=\"text-align:center\">5</td>\n</tr>\n<tr>\n<td>手机</td>\n<td style=\"text-align:right\">$12</td>\n<td style=\"text-align:center\">12</td>\n</tr>\n<tr>\n<td>管线</td>\n<td style=\"text-align:right\">$1</td>\n<td style=\"text-align:center\">234</td>\n</tr>\n</tbody>\n</table>\n');

SET FOREIGN_KEY_CHECKS = 1;
