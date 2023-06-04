<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_create_bot_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new version of the bot based on the DRAFT version

### Description

Creates a new version of the bot based on the `DRAFT` version. If the
`DRAFT` version of this resource hasn't changed since you created the
last version, Amazon Lex doesn't create a new version, it returns the
last created version.

When you create the first version of a bot, Amazon Lex sets the version
to 1. Subsequent versions increment by 1.

### Usage

    lexmodelsv2_create_bot_version(botId, description,
      botVersionLocaleSpecification)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_create_bot_version_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot to create the version
for.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_bot_version_:_description">description</code></td>
<td><p>A description of the version. Use the description to help
identify the version in lists.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_bot_version_:_botVersionLocaleSpecification">botVersionLocaleSpecification</code></td>
<td><p>[required] Specifies the locales that Amazon Lex adds to this
version. You can choose the <code>Draft</code> version or any other
previously published version for each locale. When you specify a source
version, the locale data is copied from the source version to the new
version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      description = "string",
      botVersion = "string",
      botVersionLocaleSpecification = list(
        list(
          sourceBotVersion = "string"
        )
      ),
      botStatus = "Creating"|"Available"|"Inactive"|"Deleting"|"Failed"|"Versioning"|"Importing"|"Updating",
      creationDateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_bot_version(
      botId = "string",
      description = "string",
      botVersionLocaleSpecification = list(
        list(
          sourceBotVersion = "string"
        )
      )
    )
