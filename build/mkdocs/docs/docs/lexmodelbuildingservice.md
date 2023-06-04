<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Lex Model Building Service

### Description

Amazon Lex Build-Time Actions

Amazon Lex is an AWS service for building conversational voice and text
interfaces. Use these actions to create, update, and delete
conversational bots for new and existing client applications.

### Usage

    lexmodelbuildingservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelbuildingservice_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- lexmodelbuildingservice(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_create_bot_version/"> create_bot_version </a></td>
<td style="text-align: left;">Creates a new version of the bot based on
the $LATEST version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_create_intent_version/"> create_intent_version </a></td>
<td style="text-align: left;">Creates a new version of an intent based
on the $LATEST version of the intent</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_create_slot_type_version/"> create_slot_type_version </a></td>
<td style="text-align: left;">Creates a new version of a slot type based
on the $LATEST version of the specified slot type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_delete_bot/"> delete_bot </a></td>
<td style="text-align: left;">Deletes all versions of the bot, including
the $LATEST version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_delete_bot_alias/"> delete_bot_alias </a></td>
<td style="text-align: left;">Deletes an alias for the specified
bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_delete_bot_channel_association/"> delete_bot_channel_association </a></td>
<td style="text-align: left;">Deletes the association between an Amazon
Lex bot and a messaging platform</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_delete_bot_version/"> delete_bot_version </a></td>
<td style="text-align: left;">Deletes a specific version of a bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_delete_intent/"> delete_intent </a></td>
<td style="text-align: left;">Deletes all versions of the intent,
including the $LATEST version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_delete_intent_version/"> delete_intent_version </a></td>
<td style="text-align: left;">Deletes a specific version of an
intent</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_delete_slot_type/"> delete_slot_type </a></td>
<td style="text-align: left;">Deletes all versions of the slot type,
including the $LATEST version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_delete_slot_type_version/"> delete_slot_type_version </a></td>
<td style="text-align: left;">Deletes a specific version of a slot
type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_delete_utterances/"> delete_utterances </a></td>
<td style="text-align: left;">Deletes stored utterances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_bot/"> get_bot </a></td>
<td style="text-align: left;">Returns metadata information for a
specific bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_bot_alias/"> get_bot_alias </a></td>
<td style="text-align: left;">Returns information about an Amazon Lex
bot alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_bot_aliases/"> get_bot_aliases </a></td>
<td style="text-align: left;">Returns a list of aliases for a specified
Amazon Lex bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_bot_channel_association/"> get_bot_channel_association </a></td>
<td style="text-align: left;">Returns information about the association
between an Amazon Lex bot and a messaging platform</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_bot_channel_associations/"> get_bot_channel_associations </a></td>
<td style="text-align: left;">Returns a list of all of the channels
associated with the specified bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_bots/"> get_bots </a></td>
<td style="text-align: left;">Returns bot information as follows:</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_bot_versions/"> get_bot_versions </a></td>
<td style="text-align: left;">Gets information about all of the versions
of a bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_builtin_intent/"> get_builtin_intent </a></td>
<td style="text-align: left;">Returns information about a built-in
intent</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_builtin_intents/"> get_builtin_intents </a></td>
<td style="text-align: left;">Gets a list of built-in intents that meet
the specified criteria</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_builtin_slot_types/"> get_builtin_slot_types </a></td>
<td style="text-align: left;">Gets a list of built-in slot types that
meet the specified criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_export/"> get_export </a></td>
<td style="text-align: left;">Exports the contents of a Amazon Lex
resource in a specified format</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_import/"> get_import </a></td>
<td style="text-align: left;">Gets information about an import job
started with the StartImport operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_intent/"> get_intent </a></td>
<td style="text-align: left;">Returns information about an intent</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_intents/"> get_intents </a></td>
<td style="text-align: left;">Returns intent information as
follows:</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_intent_versions/"> get_intent_versions </a></td>
<td style="text-align: left;">Gets information about all of the versions
of an intent</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_migration/"> get_migration </a></td>
<td style="text-align: left;">Provides details about an ongoing or
complete migration from an Amazon Lex V1 bot to an Amazon Lex V2
bot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_migrations/"> get_migrations </a></td>
<td style="text-align: left;">Gets a list of migrations between Amazon
Lex V1 and Amazon Lex V2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_slot_type/"> get_slot_type </a></td>
<td style="text-align: left;">Returns information about a specific
version of a slot type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_slot_types/"> get_slot_types </a></td>
<td style="text-align: left;">Returns slot type information as
follows:</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_slot_type_versions/"> get_slot_type_versions </a></td>
<td style="text-align: left;">Gets information about all versions of a
slot type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_get_utterances_view/"> get_utterances_view </a></td>
<td style="text-align: left;">Use the GetUtterancesView operation to get
information about the utterances that your users have made to your
bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Gets a list of tags associated with the
specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_put_bot/"> put_bot </a></td>
<td style="text-align: left;">Creates an Amazon Lex conversational bot
or replaces an existing bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_put_bot_alias/"> put_bot_alias </a></td>
<td style="text-align: left;">Creates an alias for the specified version
of the bot or replaces an alias for the specified bot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_put_intent/"> put_intent </a></td>
<td style="text-align: left;">Creates an intent or replaces an existing
intent</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_put_slot_type/"> put_slot_type </a></td>
<td style="text-align: left;">Creates a custom slot type or replaces an
existing custom slot type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_start_import/"> start_import </a></td>
<td style="text-align: left;">Starts a job to import a resource to
Amazon Lex</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_start_migration/"> start_migration </a></td>
<td style="text-align: left;">Starts migrating a bot from Amazon Lex V1
to Amazon Lex V2</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds the specified tags to the specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelbuildingservice_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a bot, bot alias or bot
channel</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- lexmodelbuildingservice()
    # This example shows how to get configuration information for a bot.
    svc$get_bot(
      name = "DocOrderPizza",
      versionOrAlias = "$LATEST"
    )

    ## End(Not run)
