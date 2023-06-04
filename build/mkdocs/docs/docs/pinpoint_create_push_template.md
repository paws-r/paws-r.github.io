<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_create_push_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a message template for messages that are sent through a push notification channel

### Description

Creates a message template for messages that are sent through a push
notification channel.

### Usage

    pinpoint_create_push_template(PushNotificationTemplateRequest,
      TemplateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_create_push_template_:_PushNotificationTemplateRequest">PushNotificationTemplateRequest</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_create_push_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the message template. A template name must
start with an alphanumeric character and can contain a maximum of 128
characters. The characters can be alphanumeric characters, underscores
(_), or hyphens (-). Template names are case sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreateTemplateMessageBody = list(
        Arn = "string",
        Message = "string",
        RequestID = "string"
      )
    )

### Request syntax

    svc$create_push_template(
      PushNotificationTemplateRequest = list(
        ADM = list(
          Action = "OPEN_APP"|"DEEP_LINK"|"URL",
          Body = "string",
          ImageIconUrl = "string",
          ImageUrl = "string",
          RawContent = "string",
          SmallImageIconUrl = "string",
          Sound = "string",
          Title = "string",
          Url = "string"
        ),
        APNS = list(
          Action = "OPEN_APP"|"DEEP_LINK"|"URL",
          Body = "string",
          MediaUrl = "string",
          RawContent = "string",
          Sound = "string",
          Title = "string",
          Url = "string"
        ),
        Baidu = list(
          Action = "OPEN_APP"|"DEEP_LINK"|"URL",
          Body = "string",
          ImageIconUrl = "string",
          ImageUrl = "string",
          RawContent = "string",
          SmallImageIconUrl = "string",
          Sound = "string",
          Title = "string",
          Url = "string"
        ),
        Default = list(
          Action = "OPEN_APP"|"DEEP_LINK"|"URL",
          Body = "string",
          Sound = "string",
          Title = "string",
          Url = "string"
        ),
        DefaultSubstitutions = "string",
        GCM = list(
          Action = "OPEN_APP"|"DEEP_LINK"|"URL",
          Body = "string",
          ImageIconUrl = "string",
          ImageUrl = "string",
          RawContent = "string",
          SmallImageIconUrl = "string",
          Sound = "string",
          Title = "string",
          Url = "string"
        ),
        RecommenderId = "string",
        tags = list(
          "string"
        ),
        TemplateDescription = "string"
      ),
      TemplateName = "string"
    )
