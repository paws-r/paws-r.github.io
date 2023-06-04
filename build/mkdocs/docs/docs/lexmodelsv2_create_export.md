<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_create_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a zip archive containing the contents of a bot or a bot locale

### Description

Creates a zip archive containing the contents of a bot or a bot locale.
The archive contains a directory structure that contains JSON files that
define the bot.

You can create an archive that contains the complete definition of a
bot, or you can specify that the archive contain only the definition of
a single bot locale.

For more information about exporting bots, and about the structure of
the export archive, see [Importing and exporting
bots](https://docs.aws.amazon.com/lexv2/latest/dg/importing-exporting.html)

### Usage

    lexmodelsv2_create_export(resourceSpecification, fileFormat,
      filePassword)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_create_export_:_resourceSpecification">resourceSpecification</code></td>
<td><p>[required] Specifies the type of resource to export, either a bot
or a bot locale. You can only specify one type of resource to
export.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_export_:_fileFormat">fileFormat</code></td>
<td><p>[required] The file format of the bot or bot locale definition
files.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_export_:_filePassword">filePassword</code></td>
<td><p>An password to use to encrypt the exported archive. Using a
password is optional, but you should encrypt the archive to protect the
data in transit between Amazon Lex and your local computer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      exportId = "string",
      resourceSpecification = list(
        botExportSpecification = list(
          botId = "string",
          botVersion = "string"
        ),
        botLocaleExportSpecification = list(
          botId = "string",
          botVersion = "string",
          localeId = "string"
        ),
        customVocabularyExportSpecification = list(
          botId = "string",
          botVersion = "string",
          localeId = "string"
        )
      ),
      fileFormat = "LexJson"|"TSV",
      exportStatus = "InProgress"|"Completed"|"Failed"|"Deleting",
      creationDateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_export(
      resourceSpecification = list(
        botExportSpecification = list(
          botId = "string",
          botVersion = "string"
        ),
        botLocaleExportSpecification = list(
          botId = "string",
          botVersion = "string",
          localeId = "string"
        ),
        customVocabularyExportSpecification = list(
          botId = "string",
          botVersion = "string",
          localeId = "string"
        )
      ),
      fileFormat = "LexJson"|"TSV",
      filePassword = "string"
    )
