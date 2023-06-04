<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWSKendraFrontendService

### Description

Amazon Kendra is a service for indexing large document sets.

### Usage

    kendra(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_:_config">config</code></td>
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

    svc <- kendra(
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
<td style="text-align: left;"><a href="../kendra_associate_entities_to_experience/"> associate_entities_to_experience </a></td>
<td style="text-align: left;">Grants users or groups in your IAM
Identity Center identity source access to your Amazon Kendra
experience</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_associate_personas_to_entities/"> associate_personas_to_entities </a></td>
<td style="text-align: left;">Defines the specific permissions of users
or groups in your IAM Identity Center identity source with access to
your Amazon Kendra experience</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_batch_delete_document/"> batch_delete_document </a></td>
<td style="text-align: left;">Removes one or more documents from an
index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_batch_delete_featured_results_set/"> batch_delete_featured_results_set </a></td>
<td style="text-align: left;">Removes one or more sets of featured
results</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_batch_get_document_status/"> batch_get_document_status </a></td>
<td style="text-align: left;">Returns the indexing status for one or
more documents submitted with the BatchPutDocument API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_batch_put_document/"> batch_put_document </a></td>
<td style="text-align: left;">Adds one or more documents to an
index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_clear_query_suggestions/"> clear_query_suggestions </a></td>
<td style="text-align: left;">Clears existing query suggestions from an
index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_create_access_control_configuration/"> create_access_control_configuration </a></td>
<td style="text-align: left;">Creates an access configuration for your
documents</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_create_data_source/"> create_data_source </a></td>
<td style="text-align: left;">Creates a data source connector that you
want to use with an Amazon Kendra index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_create_experience/"> create_experience </a></td>
<td style="text-align: left;">Creates an Amazon Kendra experience such
as a search application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_create_faq/"> create_faq </a></td>
<td style="text-align: left;">Creates a set of frequently ask questions
(FAQs) using a specified FAQ file stored in an Amazon S3 bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_create_featured_results_set/"> create_featured_results_set </a></td>
<td style="text-align: left;">Creates a set of featured results to
display at the top of the search results page</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_create_index/"> create_index </a></td>
<td style="text-align: left;">Creates an Amazon Kendra index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_create_query_suggestions_block_list/"> create_query_suggestions_block_list </a></td>
<td style="text-align: left;">Creates a block list to exlcude certain
queries from suggestions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_create_thesaurus/"> create_thesaurus </a></td>
<td style="text-align: left;">Creates a thesaurus for an index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_delete_access_control_configuration/"> delete_access_control_configuration </a></td>
<td style="text-align: left;">Deletes an access control configuration
that you created for your documents in an index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_delete_data_source/"> delete_data_source </a></td>
<td style="text-align: left;">Deletes an Amazon Kendra data source
connector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_delete_experience/"> delete_experience </a></td>
<td style="text-align: left;">Deletes your Amazon Kendra experience such
as a search application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_delete_faq/"> delete_faq </a></td>
<td style="text-align: left;">Removes an FAQ from an index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_delete_index/"> delete_index </a></td>
<td style="text-align: left;">Deletes an existing Amazon Kendra
index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_delete_principal_mapping/"> delete_principal_mapping </a></td>
<td style="text-align: left;">Deletes a group so that all users and sub
groups that belong to the group can no longer access documents only
available to that group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_delete_query_suggestions_block_list/"> delete_query_suggestions_block_list </a></td>
<td style="text-align: left;">Deletes a block list used for query
suggestions for an index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_delete_thesaurus/"> delete_thesaurus </a></td>
<td style="text-align: left;">Deletes an existing Amazon Kendra
thesaurus</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_describe_access_control_configuration/"> describe_access_control_configuration </a></td>
<td style="text-align: left;">Gets information about an access control
configuration that you created for your documents in an index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_describe_data_source/"> describe_data_source </a></td>
<td style="text-align: left;">Gets information about an Amazon Kendra
data source connector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_describe_experience/"> describe_experience </a></td>
<td style="text-align: left;">Gets information about your Amazon Kendra
experience such as a search application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_describe_faq/"> describe_faq </a></td>
<td style="text-align: left;">Gets information about an FAQ list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_describe_featured_results_set/"> describe_featured_results_set </a></td>
<td style="text-align: left;">Gets information about a set of featured
results</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_describe_index/"> describe_index </a></td>
<td style="text-align: left;">Gets information about an existing Amazon
Kendra index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_describe_principal_mapping/"> describe_principal_mapping </a></td>
<td style="text-align: left;">Describes the processing of PUT and DELETE
actions for mapping users to their groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_describe_query_suggestions_block_list/"> describe_query_suggestions_block_list </a></td>
<td style="text-align: left;">Gets information about a block list used
for query suggestions for an index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_describe_query_suggestions_config/"> describe_query_suggestions_config </a></td>
<td style="text-align: left;">Gets information on the settings of query
suggestions for an index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_describe_thesaurus/"> describe_thesaurus </a></td>
<td style="text-align: left;">Gets information about an existing Amazon
Kendra thesaurus</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_disassociate_entities_from_experience/"> disassociate_entities_from_experience </a></td>
<td style="text-align: left;">Prevents users or groups in your IAM
Identity Center identity source from accessing your Amazon Kendra
experience</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_disassociate_personas_from_entities/"> disassociate_personas_from_entities </a></td>
<td style="text-align: left;">Removes the specific permissions of users
or groups in your IAM Identity Center identity source with access to
your Amazon Kendra experience</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_get_query_suggestions/"> get_query_suggestions </a></td>
<td style="text-align: left;">Fetches the queries that are suggested to
your users</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_get_snapshots/"> get_snapshots </a></td>
<td style="text-align: left;">Retrieves search metrics data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_list_access_control_configurations/"> list_access_control_configurations </a></td>
<td style="text-align: left;">Lists one or more access control
configurations for an index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_list_data_sources/"> list_data_sources </a></td>
<td style="text-align: left;">Lists the data source connectors that you
have created</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_list_data_source_sync_jobs/"> list_data_source_sync_jobs </a></td>
<td style="text-align: left;">Gets statistics about synchronizing a data
source connector</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_list_entity_personas/"> list_entity_personas </a></td>
<td style="text-align: left;">Lists specific permissions of users and
groups with access to your Amazon Kendra experience</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_list_experience_entities/"> list_experience_entities </a></td>
<td style="text-align: left;">Lists users or groups in your IAM Identity
Center identity source that are granted access to your Amazon Kendra
experience</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_list_experiences/"> list_experiences </a></td>
<td style="text-align: left;">Lists one or more Amazon Kendra
experiences</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_list_faqs/"> list_faqs </a></td>
<td style="text-align: left;">Gets a list of FAQ lists associated with
an index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_list_featured_results_sets/"> list_featured_results_sets </a></td>
<td style="text-align: left;">Lists all your sets of featured results
for a given index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_list_groups_older_than_ordering_id/"> list_groups_older_than_ordering_id </a></td>
<td style="text-align: left;">Provides a list of groups that are mapped
to users before a given ordering or timestamp identifier</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_list_indices/"> list_indices </a></td>
<td style="text-align: left;">Lists the Amazon Kendra indexes that you
created</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_list_query_suggestions_block_lists/"> list_query_suggestions_block_lists </a></td>
<td style="text-align: left;">Lists the block lists used for query
suggestions for an index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Gets a list of tags associated with a
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_list_thesauri/"> list_thesauri </a></td>
<td style="text-align: left;">Lists the thesauri for an index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_put_principal_mapping/"> put_principal_mapping </a></td>
<td style="text-align: left;">Maps users to their groups so that you
only need to provide the user ID when you issue the query</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_query/"> query </a></td>
<td style="text-align: left;">Searches an active index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_start_data_source_sync_job/"> start_data_source_sync_job </a></td>
<td style="text-align: left;">Starts a synchronization job for a data
source connector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_stop_data_source_sync_job/"> stop_data_source_sync_job </a></td>
<td style="text-align: left;">Stops a synchronization job that is
currently running</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_submit_feedback/"> submit_feedback </a></td>
<td style="text-align: left;">Enables you to provide feedback to Amazon
Kendra to improve the performance of your index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds the specified tag to the specified
index, FAQ, or data source resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a tag from an index, FAQ, or a
data source</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_update_access_control_configuration/"> update_access_control_configuration </a></td>
<td style="text-align: left;">Updates an access control configuration
for your documents in an index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_update_data_source/"> update_data_source </a></td>
<td style="text-align: left;">Updates an existing Amazon Kendra data
source connector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_update_experience/"> update_experience </a></td>
<td style="text-align: left;">Updates your Amazon Kendra experience such
as a search application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_update_featured_results_set/"> update_featured_results_set </a></td>
<td style="text-align: left;">Updates a set of featured results</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_update_index/"> update_index </a></td>
<td style="text-align: left;">Updates an existing Amazon Kendra
index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_update_query_suggestions_block_list/"> update_query_suggestions_block_list </a></td>
<td style="text-align: left;">Updates a block list used for query
suggestions for an index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kendra_update_query_suggestions_config/"> update_query_suggestions_config </a></td>
<td style="text-align: left;">Updates the settings of query suggestions
for an index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kendra_update_thesaurus/"> update_thesaurus </a></td>
<td style="text-align: left;">Updates a thesaurus for an index</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- kendra()
    svc$associate_entities_to_experience(
      Foo = 123
    )

    ## End(Not run)
