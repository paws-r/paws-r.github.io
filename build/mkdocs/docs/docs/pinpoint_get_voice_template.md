<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_voice_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the content and settings of a message template for messages that are sent through the voice channel

### Description

Retrieves the content and settings of a message template for messages
that are sent through the voice channel.

### Usage

    pinpoint_get_voice_template(TemplateName, Version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_voice_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the message template. A template name must
start with an alphanumeric character and can contain a maximum of 128
characters. The characters can be alphanumeric characters, underscores
(_), or hyphens (-). Template names are case sensitive.</p></td>
</tr>
<tr class="even">
<td><code id="pinpoint_get_voice_template_:_Version">Version</code></td>
<td><p>The unique identifier for the version of the message template to
update, retrieve information about, or delete. To retrieve identifiers
and other information for all the versions of a template, use the
Template Versions resource.</p>
<p>If specified, this value must match the identifier for an existing
template version. If specified for an update operation, this value must
match the identifier for the latest existing version of the template.
This restriction helps ensure that race conditions don't occur.</p>
<p>If you don't specify a value for this parameter, Amazon Pinpoint does
the following:</p>
<ul>
<li><p>For a get operation, retrieves information about the active
version of the template.</p></li>
<li><p>For an update operation, saves the updates to (overwrites) the
latest existing version of the template, if the create-new-version
parameter isn't used or is set to false.</p></li>
<li><p>For a delete operation, deletes the template, including all
versions of the template.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VoiceTemplateResponse = list(
        Arn = "string",
        Body = "string",
        CreationDate = "string",
        DefaultSubstitutions = "string",
        LanguageCode = "string",
        LastModifiedDate = "string",
        tags = list(
          "string"
        ),
        TemplateDescription = "string",
        TemplateName = "string",
        TemplateType = "EMAIL"|"SMS"|"VOICE"|"PUSH"|"INAPP",
        Version = "string",
        VoiceId = "string"
      )
    )

### Request syntax

    svc$get_voice_template(
      TemplateName = "string",
      Version = "string"
    )
