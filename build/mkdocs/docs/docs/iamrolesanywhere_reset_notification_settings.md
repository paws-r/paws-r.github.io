<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_reset_notification_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets the custom notification setting to IAM Roles Anywhere default setting

### Description

Resets the *custom notification setting* to IAM Roles Anywhere default
setting.

**Required permissions:** `rolesanywhere:ResetNotificationSettings`.

### Usage

    iamrolesanywhere_reset_notification_settings(notificationSettingKeys,
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
id="iamrolesanywhere_reset_notification_settings_:_notificationSettingKeys">notificationSettingKeys</code></td>
<td><p>[required] A list of notification setting keys to reset. A
notification setting key includes the event and the channel.</p></td>
</tr>
<tr class="even">
<td><code
id="iamrolesanywhere_reset_notification_settings_:_trustAnchorId">trustAnchorId</code></td>
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

    svc$reset_notification_settings(
      notificationSettingKeys = list(
        list(
          channel = "ALL",
          event = "CA_CERTIFICATE_EXPIRY"|"END_ENTITY_CERTIFICATE_EXPIRY"
        )
      ),
      trustAnchorId = "string"
    )
