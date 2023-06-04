<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_migrations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of migrations between Amazon Lex V1 and Amazon Lex V2

### Description

Gets a list of migrations between Amazon Lex V1 and Amazon Lex V2.

### Usage

    lexmodelbuildingservice_get_migrations(sortByAttribute, sortByOrder,
      v1BotNameContains, migrationStatusEquals, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_migrations_:_sortByAttribute">sortByAttribute</code></td>
<td><p>The field to sort the list of migrations by. You can sort by the
Amazon Lex V1 bot name or the date and time that the migration was
started.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_migrations_:_sortByOrder">sortByOrder</code></td>
<td><p>The order so sort the list.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_migrations_:_v1BotNameContains">v1BotNameContains</code></td>
<td><p>Filters the list to contain only bots whose name contains the
specified string. The string is matched anywhere in bot name.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_migrations_:_migrationStatusEquals">migrationStatusEquals</code></td>
<td><p>Filters the list to contain only migrations in the specified
state.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_migrations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of migrations to return in the response. The
default is 10.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_migrations_:_nextToken">nextToken</code></td>
<td><p>A pagination token that fetches the next page of migrations. If
the response to this operation is truncated, Amazon Lex returns a
pagination token in the response. To fetch the next page of migrations,
specify the pagination token in the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      migrationSummaries = list(
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
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_migrations(
      sortByAttribute = "V1_BOT_NAME"|"MIGRATION_DATE_TIME",
      sortByOrder = "ASCENDING"|"DESCENDING",
      v1BotNameContains = "string",
      migrationStatusEquals = "IN_PROGRESS"|"COMPLETED"|"FAILED",
      maxResults = 123,
      nextToken = "string"
    )
