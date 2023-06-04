<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_create_sms_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a message template for messages that are sent through the SMS channel

### Description

Creates a message template for messages that are sent through the SMS
channel.

### Usage

    pinpoint_create_sms_template(SMSTemplateRequest, TemplateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_create_sms_template_:_SMSTemplateRequest">SMSTemplateRequest</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_create_sms_template_:_TemplateName">TemplateName</code></td>
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

    svc$create_sms_template(
      SMSTemplateRequest = list(
        Body = "string",
        DefaultSubstitutions = "string",
        RecommenderId = "string",
        tags = list(
          "string"
        ),
        TemplateDescription = "string"
      ),
      TemplateName = "string"
    )
