<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:py="http://purl.org/kid/ns#"
    py:extends="'master.kid'">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" py:replace="''"/>
<title>${page_title}</title>
</head>
<body>
<p>
Back to <a href="${tg.url('/location/' + str(location.id))}"><span
py:replace="location.name">Location Name</span></a>
</p>

${form(value=values, action=tg.url(action))}
</body>
</html>
