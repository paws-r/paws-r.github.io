<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_create_application_presigned_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates and returns a URL that you can use to connect to an application's extension

### Description

Creates and returns a URL that you can use to connect to an
application's extension.

The IAM role or user used to call this API defines the permissions to
access the extension. After the presigned URL is created, no additional
permission is required to access this URL. IAM authorization policies
for this API are also enforced for every HTTP request that attempts to
connect to the extension.

You control the amount of time that the URL will be valid using the
`SessionExpirationDurationInSeconds` parameter. If you do not provide
this parameter, the returned URL is valid for twelve hours.

The URL that you get from a call to CreateApplicationPresignedUrl must
be used within 3 minutes to be valid. If you first try to use the URL
after the 3-minute limit expires, the service returns an HTTP 403
Forbidden error.

### Usage

    kinesisanalyticsv2_create_application_presigned_url(ApplicationName,
      UrlType, SessionExpirationDurationInSeconds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_create_application_presigned_url_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_create_application_presigned_url_:_UrlType">UrlType</code></td>
<td><p>[required] The type of the extension for which to create and
return a URL. Currently, the only valid extension URL type is
<code>FLINK_DASHBOARD_URL</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_create_application_presigned_url_:_SessionExpirationDurationInSeconds">SessionExpirationDurationInSeconds</code></td>
<td><p>The duration in seconds for which the returned URL will be
valid.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthorizedUrl = "string"
    )

### Request syntax

    svc$create_application_presigned_url(
      ApplicationName = "string",
      UrlType = "FLINK_DASHBOARD_URL"|"ZEPPELIN_UI_URL",
      SessionExpirationDurationInSeconds = 123
    )
