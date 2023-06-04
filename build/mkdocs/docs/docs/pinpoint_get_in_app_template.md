<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_in_app_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the content and settings of a message template for messages sent through the in-app channel

### Description

Retrieves the content and settings of a message template for messages
sent through the in-app channel.

### Usage

    pinpoint_get_in_app_template(TemplateName, Version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_in_app_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the message template. A template name must
start with an alphanumeric character and can contain a maximum of 128
characters. The characters can be alphanumeric characters, underscores
(_), or hyphens (-). Template names are case sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_get_in_app_template_:_Version">Version</code></td>
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
      InAppTemplateResponse = list(
        Arn = "string",
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
        CreationDate = "string",
        CustomConfig = list(
          "string"
        ),
        LastModifiedDate = "string",
        Layout = "BOTTOM_BANNER"|"TOP_BANNER"|"OVERLAYS"|"MOBILE_FEED"|"MIDDLE_BANNER"|"CAROUSEL",
        tags = list(
          "string"
        ),
        TemplateDescription = "string",
        TemplateName = "string",
        TemplateType = "EMAIL"|"SMS"|"VOICE"|"PUSH"|"INAPP",
        Version = "string"
      )
    )

### Request syntax

    svc$get_in_app_template(
      TemplateName = "string",
      Version = "string"
    )
