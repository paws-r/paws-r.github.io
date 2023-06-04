<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_put_notification_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a list of notification settings to a trust anchor

### Description

Attaches a list of *notification settings* to a trust anchor.

A notification setting includes information such as event name,
threshold, status of the notification setting, and the channel to
notify.

**Required permissions:** `rolesanywhere:PutNotificationSettings`.

### Usage

    iamrolesanywhere_put_notification_settings(notificationSettings,
      trustAnchorId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iamrolesanywhere_put_notification_settings_:_notificationSettings">notificationSettings</code></td>
<td><p>[required] A list of notification settings to be associated to
the trust anchor.</p></td>
</tr>
<tr class="even">
<td><code
id="iamrolesanywhere_put_notification_settings_:_trustAnchorId">trustAnchorId</code></td>
<td><p>[required] The unique identifier of the trust anchor.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      trustAnchor = list(
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        enabled = TRUE|FALSE,
        name = "string",
        notificationSettings = list(
          list(
            channel = "ALL",
            configuredBy = "string",
            enabled = TRUE|FALSE,
            event = "CA_CERTIFICATE_EXPIRY"|"END_ENTITY_CERTIFICATE_EXPIRY",
            threshold = 123
          )
        ),
        source = list(
          sourceData = list(
            acmPcaArn = "string",
            x509CertificateData = "string"
          ),
          sourceType = "AWS_ACM_PCA"|"CERTIFICATE_BUNDLE"|"SELF_SIGNED_REPOSITORY"
        ),
        trustAnchorArn = "string",
        trustAnchorId = "string",
        updatedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$put_notification_settings(
      notificationSettings = list(
        list(
          channel = "ALL",
          enabled = TRUE|FALSE,
          event = "CA_CERTIFICATE_EXPIRY"|"END_ENTITY_CERTIFICATE_EXPIRY",
          threshold = 123
        )
      ),
      trustAnchorId = "string"
    )
