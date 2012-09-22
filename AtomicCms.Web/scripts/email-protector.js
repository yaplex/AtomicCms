function protectEmail(name, domain, emailParams, urlText, tooltip) {
    if (!tooltip)
        tooltip = '';
    if (!urlText)
        urlText = '';
    if (!emailParams)
        emailParams = '';

    // write link
    var email = name + '@' + domain;
    if (emailParams && emailParams.length > 0)
        emailParams = '&' + emailParams;
    var mailToUrl = 'mailto:' + email + emailParams;
    var text = email;
    if (urlText && urlText.length > 0)
        text = urlText;
    if (tooltip && tooltip.length > 0)
        tooltip = ' title="' + tooltip + '"';
    document.write('<a href="' + mailToUrl + '"' + tooltip + '>' + text + '</a>');
}

