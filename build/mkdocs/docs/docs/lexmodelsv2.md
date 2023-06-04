<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Lex Model Building V2

### Description

Amazon Lex Model Building V2

### Usage

    lexmodelsv2(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_:_config">config</code></td>
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

    svc <- lexmodelsv2(
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
<td style="text-align: left;"><a href="../lexmodelsv2_batch_create_custom_vocabulary_item/"> batch_create_custom_vocabulary_item </a></td>
<td style="text-align: left;">Create a batch of custom vocabulary items
for a given bot locale's custom vocabulary</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_batch_delete_custom_vocabulary_item/"> batch_delete_custom_vocabulary_item </a></td>
<td style="text-align: left;">Delete a batch of custom vocabulary items
for a given bot locale's custom vocabulary</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_batch_update_custom_vocabulary_item/"> batch_update_custom_vocabulary_item </a></td>
<td style="text-align: left;">Update a batch of custom vocabulary items
for a given bot locale's custom vocabulary</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_build_bot_locale/"> build_bot_locale </a></td>
<td style="text-align: left;">Builds a bot, its intents, and its slot
types into a specific locale</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_create_bot/"> create_bot </a></td>
<td style="text-align: left;">Creates an Amazon Lex conversational
bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_create_bot_alias/"> create_bot_alias </a></td>
<td style="text-align: left;">Creates an alias for the specified version
of a bot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_create_bot_locale/"> create_bot_locale </a></td>
<td style="text-align: left;">Creates a locale in the bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_create_bot_version/"> create_bot_version </a></td>
<td style="text-align: left;">Creates a new version of the bot based on
the DRAFT version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_create_export/"> create_export </a></td>
<td style="text-align: left;">Creates a zip archive containing the
contents of a bot or a bot locale</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_create_intent/"> create_intent </a></td>
<td style="text-align: left;">Creates an intent</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_create_resource_policy/"> create_resource_policy </a></td>
<td style="text-align: left;">Creates a new resource policy with the
specified policy statements</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_create_resource_policy_statement/"> create_resource_policy_statement </a></td>
<td style="text-align: left;">Adds a new resource policy statement to a
bot or bot alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_create_slot/"> create_slot </a></td>
<td style="text-align: left;">Creates a slot in an intent</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_create_slot_type/"> create_slot_type </a></td>
<td style="text-align: left;">Creates a custom slot type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_create_upload_url/"> create_upload_url </a></td>
<td style="text-align: left;">Gets a pre-signed S3 write URL that you
use to upload the zip archive when importing a bot or a bot locale</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_delete_bot/"> delete_bot </a></td>
<td style="text-align: left;">Deletes all versions of a bot, including
the Draft version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_delete_bot_alias/"> delete_bot_alias </a></td>
<td style="text-align: left;">Deletes the specified bot alias</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_delete_bot_locale/"> delete_bot_locale </a></td>
<td style="text-align: left;">Removes a locale from a bot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_delete_bot_version/"> delete_bot_version </a></td>
<td style="text-align: left;">Deletes a specific version of a bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_delete_custom_vocabulary/"> delete_custom_vocabulary </a></td>
<td style="text-align: left;">Removes a custom vocabulary from the
specified locale in the specified bot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_delete_export/"> delete_export </a></td>
<td style="text-align: left;">Removes a previous export and the
associated files stored in an S3 bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_delete_import/"> delete_import </a></td>
<td style="text-align: left;">Removes a previous import and the
associated file stored in an S3 bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_delete_intent/"> delete_intent </a></td>
<td style="text-align: left;">Removes the specified intent</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Removes an existing policy from a bot or
bot alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_delete_resource_policy_statement/"> delete_resource_policy_statement </a></td>
<td style="text-align: left;">Deletes a policy statement from a resource
policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_delete_slot/"> delete_slot </a></td>
<td style="text-align: left;">Deletes the specified slot from an
intent</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_delete_slot_type/"> delete_slot_type </a></td>
<td style="text-align: left;">Deletes a slot type from a bot locale</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_delete_utterances/"> delete_utterances </a></td>
<td style="text-align: left;">Deletes stored utterances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_describe_bot/"> describe_bot </a></td>
<td style="text-align: left;">Provides metadata information about a
bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_describe_bot_alias/"> describe_bot_alias </a></td>
<td style="text-align: left;">Get information about a specific bot
alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_describe_bot_locale/"> describe_bot_locale </a></td>
<td style="text-align: left;">Describes the settings that a bot has for
a specific locale</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_describe_bot_recommendation/"> describe_bot_recommendation </a></td>
<td style="text-align: left;">Provides metadata information about a bot
recommendation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_describe_bot_version/"> describe_bot_version </a></td>
<td style="text-align: left;">Provides metadata about a version of a
bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_describe_custom_vocabulary_metadata/"> describe_custom_vocabulary_metadata </a></td>
<td style="text-align: left;">Provides metadata information about a
custom vocabulary</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_describe_export/"> describe_export </a></td>
<td style="text-align: left;">Gets information about a specific
export</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_describe_import/"> describe_import </a></td>
<td style="text-align: left;">Gets information about a specific
import</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_describe_intent/"> describe_intent </a></td>
<td style="text-align: left;">Returns metadata about an intent</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_describe_resource_policy/"> describe_resource_policy </a></td>
<td style="text-align: left;">Gets the resource policy and policy
revision for a bot or bot alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_describe_slot/"> describe_slot </a></td>
<td style="text-align: left;">Gets metadata information about a
slot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_describe_slot_type/"> describe_slot_type </a></td>
<td style="text-align: left;">Gets metadata information about a slot
type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_list_aggregated_utterances/"> list_aggregated_utterances </a></td>
<td style="text-align: left;">Provides a list of utterances that users
have sent to the bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_list_bot_aliases/"> list_bot_aliases </a></td>
<td style="text-align: left;">Gets a list of aliases for the specified
bot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_list_bot_locales/"> list_bot_locales </a></td>
<td style="text-align: left;">Gets a list of locales for the specified
bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_list_bot_recommendations/"> list_bot_recommendations </a></td>
<td style="text-align: left;">Get a list of bot recommendations that
meet the specified criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_list_bots/"> list_bots </a></td>
<td style="text-align: left;">Gets a list of available bots</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_list_bot_versions/"> list_bot_versions </a></td>
<td style="text-align: left;">Gets information about all of the versions
of a bot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_list_built_in_intents/"> list_built_in_intents </a></td>
<td style="text-align: left;">Gets a list of built-in intents provided
by Amazon Lex that you can use in your bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_list_built_in_slot_types/"> list_built_in_slot_types </a></td>
<td style="text-align: left;">Gets a list of built-in slot types that
meet the specified criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_list_custom_vocabulary_items/"> list_custom_vocabulary_items </a></td>
<td style="text-align: left;">Paginated list of custom vocabulary items
for a given bot locale's custom vocabulary</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_list_exports/"> list_exports </a></td>
<td style="text-align: left;">Lists the exports for a bot, bot locale,
or custom vocabulary</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_list_imports/"> list_imports </a></td>
<td style="text-align: left;">Lists the imports for a bot, bot locale,
or custom vocabulary</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_list_intents/"> list_intents </a></td>
<td style="text-align: left;">Get a list of intents that meet the
specified criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_list_recommended_intents/"> list_recommended_intents </a></td>
<td style="text-align: left;">Gets a list of recommended intents
provided by the bot recommendation that you can use in your bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_list_slots/"> list_slots </a></td>
<td style="text-align: left;">Gets a list of slots that match the
specified criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_list_slot_types/"> list_slot_types </a></td>
<td style="text-align: left;">Gets a list of slot types that match the
specified criteria</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Gets a list of tags associated with a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_search_associated_transcripts/"> search_associated_transcripts </a></td>
<td style="text-align: left;">Search for associated transcripts that
meet the specified criteria</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_start_bot_recommendation/"> start_bot_recommendation </a></td>
<td style="text-align: left;">Use this to provide your transcript data,
and to start the bot recommendation process</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_start_import/"> start_import </a></td>
<td style="text-align: left;">Starts importing a bot, bot locale, or
custom vocabulary from a zip archive that you uploaded to an S3
bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_stop_bot_recommendation/"> stop_bot_recommendation </a></td>
<td style="text-align: left;">Stop an already running Bot Recommendation
request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds the specified tags to the specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a bot, bot alias, or bot
channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_update_bot/"> update_bot </a></td>
<td style="text-align: left;">Updates the configuration of an existing
bot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_update_bot_alias/"> update_bot_alias </a></td>
<td style="text-align: left;">Updates the configuration of an existing
bot alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_update_bot_locale/"> update_bot_locale </a></td>
<td style="text-align: left;">Updates the settings that a bot has for a
specific locale</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_update_bot_recommendation/"> update_bot_recommendation </a></td>
<td style="text-align: left;">Updates an existing bot recommendation
request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_update_export/"> update_export </a></td>
<td style="text-align: left;">Updates the password used to protect an
export zip archive</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_update_intent/"> update_intent </a></td>
<td style="text-align: left;">Updates the settings for an intent</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_update_resource_policy/"> update_resource_policy </a></td>
<td style="text-align: left;">Replaces the existing resource policy for
a bot or bot alias with a new one</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lexmodelsv2_update_slot/"> update_slot </a></td>
<td style="text-align: left;">Updates the settings for a slot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lexmodelsv2_update_slot_type/"> update_slot_type </a></td>
<td style="text-align: left;">Updates the configuration of an existing
slot type</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- lexmodelsv2()
    svc$batch_create_custom_vocabulary_item(
      Foo = 123
    )

    ## End(Not run)
