<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_migration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides details about an ongoing or complete migration from an Amazon Lex V1 bot to an Amazon Lex V2 bot

### Description

Provides details about an ongoing or complete migration from an Amazon
Lex V1 bot to an Amazon Lex V2 bot. Use this operation to view the
migration alerts and warnings related to the migration.

### Usage

    lexmodelbuildingservice_get_migration(migrationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_migration_:_migrationId">migrationId</code></td>
<td><p>[required] The unique identifier of the migration to view. The
<code>migrationID</code> is returned by the operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      migrationId = "string",
      v1BotName = "string",
      v1BotVersion = "string",
      v1BotLocale = "de-DE"|"en-AU"|"en-GB"|"en-IN"|"en-US"|"es-419"|"es-ES"|"es-US"|"fr-FR"|"fr-CA"|"it-IT"|"ja-JP"|"ko-KR",
      v2BotId = "string",
      v2BotRole = "string",
      migrationStatus = "IN_PROGRESS"|"COMPLETED"|"FAILED",
      migrationStrategy = "CREATE_NEW"|"UPDATE_EXISTING",
      migrationTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      alerts = list(
        list(
          type = "ERROR"|"WARN",
          message = "string",
          details = list(
            "string"
          ),
          referenceURLs = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$get_migration(
      migrationId = "string"
    )
