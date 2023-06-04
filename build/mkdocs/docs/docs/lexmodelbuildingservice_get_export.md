<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports the contents of a Amazon Lex resource in a specified format

### Description

Exports the contents of a Amazon Lex resource in a specified format.

### Usage

    lexmodelbuildingservice_get_export(name, version, resourceType,
      exportType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_export_:_name">name</code></td>
<td><p>[required] The name of the bot to export.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_export_:_version">version</code></td>
<td><p>[required] The version of the bot to export.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_export_:_resourceType">resourceType</code></td>
<td><p>[required] The type of resource to export.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_export_:_exportType">exportType</code></td>
<td><p>[required] The format of the exported data.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      name = "string",
      version = "string",
      resourceType = "BOT"|"INTENT"|"SLOT_TYPE",
      exportType = "ALEXA_SKILLS_KIT"|"LEX",
      exportStatus = "IN_PROGRESS"|"READY"|"FAILED",
      failureReason = "string",
      url = "string"
    )

### Request syntax

    svc$get_export(
      name = "string",
      version = "string",
      resourceType = "BOT"|"INTENT"|"SLOT_TYPE",
      exportType = "ALEXA_SKILLS_KIT"|"LEX"
    )
