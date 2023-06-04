<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_create_in_app_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new message template for messages using the in-app message channel

### Description

Creates a new message template for messages using the in-app message
channel.

### Usage

    pinpoint_create_in_app_template(InAppTemplateRequest, TemplateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_create_in_app_template_:_InAppTemplateRequest">InAppTemplateRequest</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_create_in_app_template_:_TemplateName">TemplateName</code></td>
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
      TemplateCreateMessageBody = list(
        Arn = "string",
        Message = "string",
        RequestID = "string"
      )
    )

### Request syntax

    svc$create_in_app_template(
      InAppTemplateRequest = list(
        Content = list(
          list(
            BackgroundColor = "string",
            BodyConfig = list(
              Alignment = "LEFT"|"CENTER"|"RIGHT",
              Body = "string",
              TextColor = "string"
            ),
            HeaderConfig = list(
              Alignment = "LEFT"|"CENTER"|"RIGHT",
              Header = "string",
              TextColor = "string"
            ),
            ImageUrl = "string",
            PrimaryBtn = list(
              Android = list(
                ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                Link = "string"
              ),
              DefaultConfig = list(
                BackgroundColor = "string",
                BorderRadius = 123,
                ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                Link = "string",
                Text = "string",
                TextColor = "string"
              ),
              IOS = list(
                ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                Link = "string"
              ),
              Web = list(
                ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                Link = "string"
              )
            ),
            SecondaryBtn = list(
              Android = list(
                ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                Link = "string"
              ),
              DefaultConfig = list(
                BackgroundColor = "string",
                BorderRadius = 123,
                ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                Link = "string",
                Text = "string",
                TextColor = "string"
              ),
              IOS = list(
                ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                Link = "string"
              ),
              Web = list(
                ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                Link = "string"
              )
            )
          )
        ),
        CustomConfig = list(
          "string"
        ),
        Layout = "BOTTOM_BANNER"|"TOP_BANNER"|"OVERLAYS"|"MOBILE_FEED"|"MIDDLE_BANNER"|"CAROUSEL",
        tags = list(
          "string"
        ),
        TemplateDescription = "string"
      ),
      TemplateName = "string"
    )
