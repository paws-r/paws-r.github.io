<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_start_migration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts migrating a bot from Amazon Lex V1 to Amazon Lex V2

### Description

Starts migrating a bot from Amazon Lex V1 to Amazon Lex V2. Migrate your
bot when you want to take advantage of the new features of Amazon Lex
V2.

For more information, see [Migrating a
bot](https://docs.aws.amazon.com/lex/latest/dg/migrate.html) in the
*Amazon Lex developer guide*.

### Usage

    lexmodelbuildingservice_start_migration(v1BotName, v1BotVersion,
      v2BotName, v2BotRole, migrationStrategy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_start_migration_:_v1BotName">v1BotName</code></td>
<td><p>[required] The name of the Amazon Lex V1 bot that you are
migrating to Amazon Lex V2.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_start_migration_:_v1BotVersion">v1BotVersion</code></td>
<td><p>[required] The version of the bot to migrate to Amazon Lex V2.
You can migrate the <code style="white-space: pre;">⁠$LATEST⁠</code>
version as well as any numbered version.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_start_migration_:_v2BotName">v2BotName</code></td>
<td><p>[required] The name of the Amazon Lex V2 bot that you are
migrating the Amazon Lex V1 bot to.</p>
<ul>
<li><p>If the Amazon Lex V2 bot doesn't exist, you must use the
<code>CREATE_NEW</code> migration strategy.</p></li>
<li><p>If the Amazon Lex V2 bot exists, you must use the
<code>UPDATE_EXISTING</code> migration strategy to change the contents
of the Amazon Lex V2 bot.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_start_migration_:_v2BotRole">v2BotRole</code></td>
<td><p>[required] The IAM role that Amazon Lex uses to run the Amazon
Lex V2 bot.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_start_migration_:_migrationStrategy">migrationStrategy</code></td>
<td><p>[required] The strategy used to conduct the migration.</p>
<ul>
<li><p><code>CREATE_NEW</code> - Creates a new Amazon Lex V2 bot and
migrates the Amazon Lex V1 bot to the new bot.</p></li>
<li><p><code>UPDATE_EXISTING</code> - Overwrites the existing Amazon Lex
V2 bot metadata and the locale being migrated. It doesn't change any
other locales in the Amazon Lex V2 bot. If the locale doesn't exist, a
new locale is created in the Amazon Lex V2 bot.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      v1BotName = "string",
      v1BotVersion = "string",
      v1BotLocale = "de-DE"|"en-AU"|"en-GB"|"en-IN"|"en-US"|"es-419"|"es-ES"|"es-US"|"fr-FR"|"fr-CA"|"it-IT"|"ja-JP"|"ko-KR",
      v2BotId = "string",
      v2BotRole = "string",
      migrationId = "string",
      migrationStrategy = "CREATE_NEW"|"UPDATE_EXISTING",
      migrationTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$start_migration(
      v1BotName = "string",
      v1BotVersion = "string",
      v2BotName = "string",
      v2BotRole = "string",
      migrationStrategy = "CREATE_NEW"|"UPDATE_EXISTING"
    )
