/****** Object:  Table [dbo].[ac_Users]    Script Date: 09/08/2011 00:47:46 ******/
SET IDENTITY_INSERT [dbo].[ac_Users] ON
INSERT [dbo].[ac_Users] ([Id], [Login], [Hash], [DisplayName], [Email], [Registered], [Status], [Role]) VALUES (1, N'admin', N'9+hloFxsNFkji7CiVPjz0c4veNgFHIkIrxfkccPiMwM2s248/pgESCJKHgMQD6EIrFYfTNRzVxTb4RyZyoAU0Sdy9AfIwxQ=', N'Alexander Shapovalov', N'alexander@shapovalov.ca', CAST(0x00009CE5016CF3BC AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[ac_Users] OFF
/****** Object:  Table [dbo].[ac_Tags]    Script Date: 09/08/2011 00:47:46 ******/
SET IDENTITY_INSERT [dbo].[ac_Tags] ON
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (1, N'Atomic CMS')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (2, N'new')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (3, N'release')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (4, N'impruvements')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (5, N'admin')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (6, N'installation')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (7, N'congratulation')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (8, N'about')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (9, N'website')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (10, N'rss')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (11, N'templates')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (12, N'new test tag')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (13, N'test')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (14, N'test post')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (17, N'opps')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (18, N'hello world')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (19, N'new year')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (20, N'333333333')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (21, N'tags')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (22, N'22222222222')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (23, N'tessa')
INSERT [dbo].[ac_Tags] ([TagId], [TagName]) VALUES (24, N'published')
SET IDENTITY_INSERT [dbo].[ac_Tags] OFF
/****** Object:  Table [dbo].[ac_Statuses]    Script Date: 09/08/2011 00:47:46 ******/
INSERT [dbo].[ac_Statuses] ([StatusId], [StatusName], [Description]) VALUES (1, N'Draft', N'Draft page')
INSERT [dbo].[ac_Statuses] ([StatusId], [StatusName], [Description]) VALUES (2, N'Published', N'published page')
INSERT [dbo].[ac_Statuses] ([StatusId], [StatusName], [Description]) VALUES (3, N'Dropped', N'page deleted')
/****** Object:  Table [dbo].[ac_SiteSettings]    Script Date: 09/08/2011 00:47:46 ******/
SET IDENTITY_INSERT [dbo].[ac_SiteSettings] ON
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (1, N'SiteLogo', N'Atomic CMS - Home')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (2, N'SiteSubLogo', N'free asp.net mvc content management system')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (3, N'Copyrights', N'Copyrights &copy; 2010 <a href="http://alexandershapovalov.com/" alt="professional asp.net developer">Alexander Shapovalov</a>')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (4, N'NewsFlashTitle', N'Last news')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (5, N'NewsFlashBody', NULL)
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (6, N'google-analytics', N'<script>
 // you can put google analytics script here
</script>')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (7, N'DefaultPageId', N'3')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (8, N'RssLink', N'http://atomiccms.com/atom/')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (9, N'ad-slot-news', N'<div style="float: right; text-align: left; line-height: 17px;">
      <div style="color: rgb(128, 0, 0); font-size: 16px; font-weight: bold;">Last news:</div>
      <div><em>January 2011,</em> <a href="http://atomiccms.com/">AtomicCms 2.1.2 was released</a></div>
</div>')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (10, N'ad-banner-top', NULL)
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (11, N'module-top-center', N'<!--
                        <img height="300" width="915" src="/demo/themes/joomla/2011/nano/images/yootheme/home_warp_teaser.jpg"
                             class="size-auto">
-->
                        <h1 style="margin: 15px 0 10px 0; letter-spacing: 2px;">
Software development</h1>
                        <p style="margin: 0; font-size: 26px; color: #999999;">
                            <a href="#"> call or email us</a></p>
')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (12, N'module-middle-left', N'                    <h3 class="title">
                        <span class="color">Joomla</span> &amp; Wordpress</h3>
                    <p>
                        This theme is available for Joomla 1.5, 1.6 and WordPress including the same features
                        on each system.</p>
')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (13, N'module-bottom-left-left', N'<!-- <img height="42" width="42" src="/demo/themes/joomla/2011/nano/images/yootheme/features_icon_lightweight.png"  class="align-left"/> --> 
                    <div class="bfc-o">
                        <h3 class="remove-margin">
                            Microsoft .NET development</h3>
                        <p class="remove-margin-b">
We develop applications using all types of Microsoft .NET tools and frameworks, including ASP.NET MVC, Silverlight, WPF, WinForms                            
</p>
                    </div>
')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (14, N'module-bottom-left-center', N'                    <img height="50" width="42" src="/demo/themes/joomla/2011/nano/images/yootheme/features_icon_mobile.png"
                        class="align-left">
                    <div class="bfc-o">
                        <h3 class="remove-margin">
                            Mobile Theme included</h3>
                        <p class="remove-margin-b">
                            Dedicated theme for mobile devices with Retina support.</p>
                    </div>
')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (15, N'module-bottom-right-center', N'                    <img height="50" width="42" src="/demo/themes/joomla/2011/nano/images/yootheme/features_icon_html5.png"
                        class="align-left">
                    <div class="bfc-o">
                        <h3 class="remove-margin">
                            Latest web techniques</h3>
                        <p class="remove-margin-b">
                            Completely built with HTML5, CSS3, PHP 5.2+ and jQuery.</p>
                    </div>
')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (16, N'module-bottom-right-right', N'                    <img height="46" width="42" src="/demo/themes/joomla/2011/nano/images/yootheme/features_icon_demo_package.png"
                        class="align-left">
                    <div class="bfc-o">
                        <h3 class="remove-margin">
                            Demo Package available</h3>
                        <p class="remove-margin-b">
                            Sample data for Joomla and WordPress is available.</p>
                    </div>
')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (17, N'add-this', N'<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style addthis_32x32_style">
<a class="addthis_button_preferred_1"></a>
<a class="addthis_button_preferred_2"></a>
<a class="addthis_button_preferred_3"></a>
<a class="addthis_button_preferred_4"></a>
<a class="addthis_button_preferred_5"></a>
<a class="addthis_button_preferred_6"></a>
<a class="addthis_button_preferred_7"></a>
<a class="addthis_button_preferred_8"></a>

<a class="addthis_button_compact"></a>
<a class="addthis_counter addthis_bubble_style"></a>
</div>
<script type="text/javascript">var addthis_config = {"data_track_clickback":true};</script>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=alexandershapovalov"></script>
<!-- AddThis Button END -->')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (18, N'twitter', N'<a href="http://www.twitter.com/alexshapovalov" target="_new"><img src="/uploads/twitter.png" alt="Follow alexshapovalov on Twitter"/></a>')
INSERT [dbo].[ac_SiteSettings] ([Id], [Name], [Value]) VALUES (19, N'rss', N'<a href="/rss"><img src="/uploads/feed.png" alt="subscribe"/></a>')
SET IDENTITY_INSERT [dbo].[ac_SiteSettings] OFF
/****** Object:  Table [dbo].[ac_MenuTypes]    Script Date: 09/08/2011 00:47:46 ******/
SET IDENTITY_INSERT [dbo].[ac_MenuTypes] ON
INSERT [dbo].[ac_MenuTypes] ([Id], [Title], [Type], [Description]) VALUES (1, N'Menu', N'SideMenu', N'Left Menu')
INSERT [dbo].[ac_MenuTypes] ([Id], [Title], [Type], [Description]) VALUES (2, N'', N'FooterMenu', N'Footer Menu')
INSERT [dbo].[ac_MenuTypes] ([Id], [Title], [Type], [Description]) VALUES (3, N'', N'TopMenu', N'Top menu')
INSERT [dbo].[ac_MenuTypes] ([Id], [Title], [Type], [Description]) VALUES (4, N'Menu', N'LeftMenu', N'Left Menu')
SET IDENTITY_INSERT [dbo].[ac_MenuTypes] OFF
/****** Object:  Table [dbo].[ac_Pages]    Script Date: 09/08/2011 00:47:46 ******/
SET IDENTITY_INSERT [dbo].[ac_Pages] ON
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (2, N'about', N'Free and open source content management sytem.', N'atomic cms, about atomic cms', N'About Atomic CMS', N'<p>
	Atomic CMS is a free open source content management system. It has easy to use admin panel, and SEO (search engine optimization) features.</p>
<p>
	Atomic CMS - ideal for</p>
<ul>
	<li>
		small personal websites</li>
	<li>
		information websites</li>
	<li>
		promo websites.</li>
</ul>
<p>
	Atomic CMS has RSS support, so you can use it as a blog engine.</p>
', CAST(0x00009C5F00EB6D88 AS DateTime), CAST(0x00009E65001ADEE8 AS DateTime), 1, N'About Atomic CMS', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (3, N'default', N'Atomic CMS', N'atomic cms', N'Atomic CMS', N'<p>
	Congratulations! <strong>You have successfully installed Atomic CMS</strong>.</p>
<p>
	Now you can go to <a href="/admin/">admin section</a> and change the text of this page, username and password.</p>
<p>
	You can always find more information about <a href="http://atomiccms.com/">Atomic CMS at it&#39;s official website</a></p>
<p>
	Atomic CMS is a free and open source project, you can download and modify source code according to your requirements.</p>
<h2>
	Admin section</h2>
<ul>
	<li>
		You can edit content of this website in admin section. To login in <a href="/admin/">admin section</a></li>
	<li>
		Default user is: <strong>admin</strong></li>
	<li>
		Default password is:<strong> admin</strong></li>
</ul>
', CAST(0x00009C5F00EB6D88 AS DateTime), CAST(0x00009F0E0154B900 AS DateTime), 1, N' ', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (11, N'test', N'test', N'', N'test', NULL, CAST(0x00009E6D00372DC8 AS DateTime), CAST(0x00009E6D00372DC8 AS DateTime), 1, N'test', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (12, N'test-ddddd', N'test ddddd', N'', N'test ddddd', NULL, CAST(0x00009E6D00387BC4 AS DateTime), CAST(0x00009E6D00387BC4 AS DateTime), 1, N'test ddddd', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (13, N'test', N'test', N'', N'test', NULL, CAST(0x00009E6D00391548 AS DateTime), CAST(0x00009E6D00391548 AS DateTime), 1, N'test', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (14, N'test', N'test', N'', N'test', NULL, CAST(0x00009E6D00399888 AS DateTime), CAST(0x00009E6D00399888 AS DateTime), 1, N'test', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (15, N'fasdfasdfas', N'fasdfasdfas', N'', N'fasdfasdfas', NULL, CAST(0x00009E6D003E4888 AS DateTime), CAST(0x00009E6D003E4888 AS DateTime), 1, N'fasdfasdfas', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (16, N'fasdfasd', N'fasdfasd', N'', N'fasdfasd', NULL, CAST(0x00009E6D003EEB6C AS DateTime), CAST(0x00009E6D003EEB6C AS DateTime), 1, N'fasdfasd', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (17, N'fasdfas', N'fasdfas', N'', N'fasdfas', NULL, CAST(0x00009E6D003F16C8 AS DateTime), CAST(0x00009E6D003F16C8 AS DateTime), 1, N'fasdfas', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (18, N'fasdfasdfasd', N'fasdfasdfasd', N'', N'fasdfasdfasd', NULL, CAST(0x00009E6D003FC1E0 AS DateTime), CAST(0x00009E6D003FC1E0 AS DateTime), 1, N'fasdfasdfasd', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (19, N'fasdfas', N'fasdfas', N'', N'fasdfas', NULL, CAST(0x00009E6D0045A4E8 AS DateTime), CAST(0x00009E6D0045FF24 AS DateTime), 1, N'fasdfas', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (20, N'fasdfas', N'fasdfas', N'', N'fasdfas', NULL, CAST(0x00009E6D0048CB28 AS DateTime), CAST(0x00009E6D00527F88 AS DateTime), 1, N'fasdfas', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (25, N'fasdsad', N'fasdsad', N'published', N'page id= 26', NULL, CAST(0x00009E6D00FA8084 AS DateTime), CAST(0x00009E6D011EA34C AS DateTime), 1, N'Page 1', 2)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (26, N'eeeeeeeeeee', N'2222222222222222222222222222222222222222222', N'44444444444444', N'Page id = 25', N'<p>
	fasdfasdfasd</p>
', CAST(0x00009E6D00FEE0D4 AS DateTime), CAST(0x00009E6D011E9668 AS DateTime), 1, N'Page 2', 2)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (27, N'test', N'test', N'', N'dafsds', NULL, CAST(0x00009E6D0108EE44 AS DateTime), CAST(0x00009E6D0108EE44 AS DateTime), 1, N'test', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (28, N'tesssss', N'tesssss', N'', N'tesssss', NULL, CAST(0x00009E6D0109AC1C AS DateTime), CAST(0x00009E6D0109AC1C AS DateTime), 1, N'tesssss', 1)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (29, N'tessa', N'tessa', N'tessa', N'tessa', N'<p>
	tessa</p>
', CAST(0x00009E6D0109B324 AS DateTime), CAST(0x00009E6D012A9E18 AS DateTime), 1, N'tessafas dasd as fdasd', 2)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (30, N'new-page-title', N'and desc', N'keywords', N'Meta title', N'<p>
	Hello world</p>
', CAST(0x00009E6D012B4354 AS DateTime), CAST(0x00009E6D012B748C AS DateTime), 1, N'New page title', 2)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (31, N'published-page', N'published page', N'', N'published page', N'<p>
	fasdfasdfasdfasd</p>
', CAST(0x00009E6D012B7CC0 AS DateTime), CAST(0x00009E9000ED8C1C AS DateTime), 1, N'published page', 3)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (32, N'formatting', N'My clients', N'', N'My clients', N'<p>
	You can <mark>create some beautiful content by</mark> using some simple HTML elements.</p>
<blockquote>
	The Warp theme framework offers some neat styles for all HTML elements</blockquote>
<p>
	and a great set of CSS classes to style your content. Basic HTML is very easy to learn and this small guide shows you how to use all styles provided by the Warp framework.</p>
<p>
	&nbsp;</p>
<h2>
	Basic HTML Elements</h2>
<p>
	text</p>
<h3>
	Text-Level Semantics</h3>
<p>
	Here is a short demonstration of text-level semanticts. The &lt;p&gt; element creates a new paragraph. It will have some space before and after itself. To turn your text into hypertext just use the</p>
<ul>
	<li>
		<a href="http://www.yootheme.com" target="_blank">YOOtheme</a> - Premium Joomla Templates and WordPress Themes</li>
	<li>
		<a href="http://www.yootheme.com/warp" target="_blank">Warp Framework</a> - Fast and Slick Theme Framework</li>
</ul>
<pre>
pre {
    margin: 15px 0;
}
</pre>
<p>
	<small>Use the &lt;small&gt; element for side comments and small print.</small></p>
<hr />
<h2>
	Useful CSS Classes</h2>
<p>
	Here is a short demonstration of all style related CSS classes provided by the Warp framework.</p>
<h3>
	Highlight Content</h3>
<p class="dropcap">
	Drop caps are the first letter of a paragraph which are displayed bigger than the rest of the text. You can create a drop cap using the CSS class <code>dropcap</code>. To emphasize text with some small boxes use <em class="box">&lt;em&gt; element</em> with the CSS class <code>box</code>.</p>
<div class="box-content">
	This simple box is intended to group large parts of your content using the CSS class <code>box-content</code>.</div>
<div class="box-note">
	This is a simple box to highlight some text using the CSS class <code>box-note</code>.</div>
<div class="box-info">
	This is a simple box with useful information using the CSS class <code>box-info</code>.</div>
<div class="box-warning">
	This is a simple box with important notes and warnings using the CSS class <code>box-warning</code>.</div>
<div class="box-hint">
	This is a simple box with additional hints using the CSS class <code>box-hint</code>.</div>
<div class="box-download">
	This is a simple box with download information using the CSS class <code>box-download</code>.</div>
<p>
	Use the CSS class <code>dotted</code> to create a dotted horizontal rule.</p>
<hr class="dotted" />
<h3>
	Tables</h3>
<p>
	Create a zebra stripped table using using the CSS class <code>zebra</code>.</p>
<table class="zebra">
	<caption>
		Table caption</caption>
	<thead>
		<tr>
			<th>
				Table Heading</th>
			<th>
				Table Heading</th>
			<th class="center">
				Table Heading</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<td>
				Table Footer</td>
			<td>
				Table Footer</td>
			<td class="center">
				Table Footer</td>
		</tr>
	</tfoot>
	<tbody>
		<tr class="odd">
			<td>
				Table Data</td>
			<td>
				Table Data</td>
			<td class="center">
				Data Centered</td>
		</tr>
		<tr>
			<td class="bold">
				Data Bold</td>
			<td>
				Table Data</td>
			<td class="center">
				Data Centered</td>
		</tr>
		<tr class="odd">
			<td>
				Table Data</td>
			<td>
				Table Data</td>
			<td class="center">
				Data Centered</td>
		</tr>
	</tbody>
</table>
', CAST(0x00009E900011F544 AS DateTime), CAST(0x00009F0E01391D6C AS DateTime), 1, N'Formatting', 2)
INSERT [dbo].[ac_Pages] ([Id], [Alias], [MetaDescription], [MetaKeywords], [SeoTitle], [PageContent], [Created], [LastModified], [Author], [PageTitle], [PageStatus]) VALUES (33, N'test', N'TEST', N'', N'TEST', N'<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	if you are going to distribute your application in Apple App Store, you have to create (or order from graphic designer) at least 3 images.</p>
<h2>
	iTunes Artwork</h2>
<p>
	This application should be send to Apple separate from your application. Apple use this image to create icons in iTunes. The size of image 512x512 pixels in PNG format. The file have to be named <strong>iTunesArtwork.png</strong></p>
<h2>
	Application icon</h2>
<p>
	This image is an icon which will be available on iPhone device. The image size depends of iPhone model, for old iPhone devices it should be 57x57 pixels, but for iPhone 4 it should be 114x114 pixels (but from our experience small 57x57 icons works find on iPhone 4). The file name should be Icon.png</p>
<h2>
	Launch image</h2>
<p>
	Launch image is the last required image for iPhone device. The size of image should be 320x480 pixels and the file name should be Default.png</p>
<blockquote>
	<p>
		All images should <strong>not</strong> contain rounded corners, because iPhone do it for you. Just create 90 degree corners.&nbsp; If you already applied shine effects, let your programmers know it. When you do not let the iPhone/iPad OS to apply the gloss to your icons, developers must add a key to info.plist called <em>UIPrerenderedIcon</em> and make it checked.</p>
</blockquote>
<h2>
	Optional images for iPhone</h2>
<p>
	Below threr is a table which contains list of all images, optional and required for distribution application in Apple App Store.</p>
<table border="0" cellspacing="2" style="width: 520px;">
	<tbody>
		<tr align="left" style="background-color: #f8ca67; height: 30px;" valign="middle">
			<td width="150">
				<span style="font-size: xx-small;"><strong>Name</strong></span></td>
			<td width="100">
				<span style="font-size: xx-small;"><strong>Size (pixels)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Platform</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>57 x 57</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-settings.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>29 x 29</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for settings area. Alternative name: Icon-Small.png</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>72 x 72</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad application icon. Alternative name: Icon-72.png </strong>Add some smaller (iPad doc: 64x64, other optional 32x32, 24x24, 16x16) custom icons to your project. See comments.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Icon-spot~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>50 x 50</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad icon for spotlight search. Alternative name: Icon-Small-50.png</strong> iPhone OS trims 1 pixel from each side and adds a drop shadow. The actual size is 48x48 pixels.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>iTunesArtwork.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>512 x 512</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>Universial application icon for iTunes App Store.</strong> Uploaded separately to iTunes. It is included in the app bundle too, file name: <em>iTunesArtwork</em>. In an iPad application iPhone OS uses this image to generate the large (320x320) document icon if it is not supplied otherwise.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>320 (w) x 480 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone/iPod 2, 3 portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default@2x.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>640 (w) x 960 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPhone 4 hi-res portrait launch image</strong></span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;"><strong>Default~ipad.png</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>768 (w) x 1004 (h)</strong></span></td>
			<td>
				<span style="font-size: xx-small;"><strong>iPad. Specifies the default <em>portrait</em> launch image.</strong> This image is used if a more specific image is not available. Use full size template (768x1024) to design this launch image. The 20 pixels height statusbar is on by default and occupies the top of the screen, aka the 1004 rows vs. 1024.</span></td>
		</tr>
		<tr align="left" style="background-color: #f3f3f3; height: 24px;" valign="middle">
			<td>
				<span style="font-size: xx-small;"><em>Optional icons and images:</em></span></td>
			<td>
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">114 x 114</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-settings@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">58 x 58</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res application icon for settings/search area</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc.png</span></td>
			<td>
				<span style="font-size: xx-small;">22 (w) x 29 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">Universial document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc@2x.png</span></td>
			<td>
				<span style="font-size: xx-small;">44 (w) x 58 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone 4 hi-res document icon</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">64 x 64</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (small)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Icon-doc320~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 x 320</span></td>
			<td>
				<span style="font-size: xx-small;">iPad document icon (large)</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Background-xxx.png</span></td>
			<td>
				<span style="font-size: xx-small;">320 (w) x 480 (h)<br />
				640 (w) x 960 (h)<br />
				768 (w) x 1024 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPhone/iPod Touch 2, 3 background image,<br />
				iPhone 4 background image, full size<br />
				iPad background image, full size. For most projects the status bar is hidden, so use full screen size by default.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-PortraitUpsideDown~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies an upside-down portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This file takes precedence over the Default-Portrait.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeLeft~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a left-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-LandscapeRight~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;"><span style="font-size: xx-small;">1024 (w) x 748 (h)</span></span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies a right-oriented landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. This file takes precedence over the Default-Landscape.png image file for this specific orientation.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Portrait~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">768 (w) x 1004 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic portrait version of the launch image. The height of this image should be 1004 pixels and the width should be 768. This image is used for right side-up portrait orientations and takes precedence over the Default~ipad.png image file. If a Default-PortraitUpsideDown.png image file is not specified, this file is also used for upside-down portrait orientations as well.</span></td>
		</tr>
		<tr>
			<td>
				<span style="font-size: xx-small;">Default-Landscape~ipad.png</span></td>
			<td>
				<span style="font-size: xx-small;">1024 (w) x 748 (h)</span></td>
			<td>
				<span style="font-size: xx-small;">iPad. Specifies the generic landscape version of the launch image. The height of this image should be 748 pixels and the width should be 1024. If a Default-LandscapeLet.png or Default-LandscapeRight.png image file is not specified, this image is used instead. This image takes precedence over the Default.png image file.</span></td>
		</tr>
	</tbody>
</table>
<p>
	<br />
	fasdfasdfasdfasd</p>
', CAST(0x00009F02015A5108 AS DateTime), CAST(0x00009F02016542FC AS DateTime), 1, N'TEST', 1)
SET IDENTITY_INSERT [dbo].[ac_Pages] OFF
/****** Object:  Table [dbo].[ac_MenuItems]    Script Date: 09/08/2011 00:47:46 ******/
SET IDENTITY_INSERT [dbo].[ac_MenuItems] ON
INSERT [dbo].[ac_MenuItems] ([Id], [Title], [NavigateUrl], [MenuId], [Parent], [Visible], [Ordering], [EntryId]) VALUES (1, N'Home Page', N'/', 1, 1, 1, 0, NULL)
INSERT [dbo].[ac_MenuItems] ([Id], [Title], [NavigateUrl], [MenuId], [Parent], [Visible], [Ordering], [EntryId]) VALUES (2, N'About', N'', 1, 1, 1, 0, 2)
INSERT [dbo].[ac_MenuItems] ([Id], [Title], [NavigateUrl], [MenuId], [Parent], [Visible], [Ordering], [EntryId]) VALUES (3, N'What''s new?', N'', 1, 2, 0, 0, NULL)
INSERT [dbo].[ac_MenuItems] ([Id], [Title], [NavigateUrl], [MenuId], [Parent], [Visible], [Ordering], [EntryId]) VALUES (4, N'Atomic CMS online', N'http://atomiccms.com/', 3, 2, 1, 0, NULL)
INSERT [dbo].[ac_MenuItems] ([Id], [Title], [NavigateUrl], [MenuId], [Parent], [Visible], [Ordering], [EntryId]) VALUES (5, N'Download', N'', 1, 0, 0, 0, 2)
INSERT [dbo].[ac_MenuItems] ([Id], [Title], [NavigateUrl], [MenuId], [Parent], [Visible], [Ordering], [EntryId]) VALUES (6, N'Home', N'/', 3, 0, 1, 0, NULL)
INSERT [dbo].[ac_MenuItems] ([Id], [Title], [NavigateUrl], [MenuId], [Parent], [Visible], [Ordering], [EntryId]) VALUES (7, N'About', N'', 3, 0, 1, 0, 2)
INSERT [dbo].[ac_MenuItems] ([Id], [Title], [NavigateUrl], [MenuId], [Parent], [Visible], [Ordering], [EntryId]) VALUES (8, N'Home', N'/', 4, 0, 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[ac_MenuItems] OFF
/****** Object:  Table [dbo].[ac_PageTags]    Script Date: 09/08/2011 00:47:46 ******/
INSERT [dbo].[ac_PageTags] ([PageId], [TagId]) VALUES (2, 6)
INSERT [dbo].[ac_PageTags] ([PageId], [TagId]) VALUES (2, 9)
INSERT [dbo].[ac_PageTags] ([PageId], [TagId]) VALUES (2, 10)
INSERT [dbo].[ac_PageTags] ([PageId], [TagId]) VALUES (2, 11)
INSERT [dbo].[ac_PageTags] ([PageId], [TagId]) VALUES (2, 12)
INSERT [dbo].[ac_PageTags] ([PageId], [TagId]) VALUES (2, 17)
INSERT [dbo].[ac_PageTags] ([PageId], [TagId]) VALUES (2, 18)
INSERT [dbo].[ac_PageTags] ([PageId], [TagId]) VALUES (2, 19)
INSERT [dbo].[ac_PageTags] ([PageId], [TagId]) VALUES (25, 24)
INSERT [dbo].[ac_PageTags] ([PageId], [TagId]) VALUES (26, 24)
INSERT [dbo].[ac_PageTags] ([PageId], [TagId]) VALUES (29, 23)
INSERT [dbo].[ac_PageTags] ([PageId], [TagId]) VALUES (30, 8)
