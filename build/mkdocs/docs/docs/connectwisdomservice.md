<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Connect Wisdom Service

### Description

Amazon Connect Wisdom delivers agents the information they need to solve
customer issues as they're actively speaking with customers. Agents can
search across connected repositories from within their agent desktop to
find answers quickly. Use Amazon Connect Wisdom to create an assistant
and a knowledge base, for example, or manage content by uploading custom
files.

### Usage

    connectwisdomservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connectwisdomservice_:_config">config</code></td>
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

    svc <- connectwisdomservice(
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
<td style="text-align: left;"><a href="../connectwisdomservice_create_assistant/"> create_assistant </a></td>
<td style="text-align: left;">Creates an Amazon Connect Wisdom
assistant</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_create_assistant_association/"> create_assistant_association </a></td>
<td style="text-align: left;">Creates an association between an Amazon
Connect Wisdom assistant and another resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_create_content/"> create_content </a></td>
<td style="text-align: left;">Creates Wisdom content</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_create_knowledge_base/"> create_knowledge_base </a></td>
<td style="text-align: left;">Creates a knowledge base</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_create_session/"> create_session </a></td>
<td style="text-align: left;">Creates a session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_delete_assistant/"> delete_assistant </a></td>
<td style="text-align: left;">Deletes an assistant</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_delete_assistant_association/"> delete_assistant_association </a></td>
<td style="text-align: left;">Deletes an assistant association</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_delete_content/"> delete_content </a></td>
<td style="text-align: left;">Deletes the content</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_delete_knowledge_base/"> delete_knowledge_base </a></td>
<td style="text-align: left;">Deletes the knowledge base</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_get_assistant/"> get_assistant </a></td>
<td style="text-align: left;">Retrieves information about an
assistant</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_get_assistant_association/"> get_assistant_association </a></td>
<td style="text-align: left;">Retrieves information about an assistant
association</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_get_content/"> get_content </a></td>
<td style="text-align: left;">Retrieves content, including a pre-signed
URL to download the content</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_get_content_summary/"> get_content_summary </a></td>
<td style="text-align: left;">Retrieves summary information about the
content</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_get_knowledge_base/"> get_knowledge_base </a></td>
<td style="text-align: left;">Retrieves information about the knowledge
base</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_get_recommendations/"> get_recommendations </a></td>
<td style="text-align: left;">Retrieves recommendations for the
specified session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_get_session/"> get_session </a></td>
<td style="text-align: left;">Retrieves information for a specified
session</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_list_assistant_associations/"> list_assistant_associations </a></td>
<td style="text-align: left;">Lists information about assistant
associations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_list_assistants/"> list_assistants </a></td>
<td style="text-align: left;">Lists information about assistants</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_list_contents/"> list_contents </a></td>
<td style="text-align: left;">Lists the content</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_list_knowledge_bases/"> list_knowledge_bases </a></td>
<td style="text-align: left;">Lists the knowledge bases</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags for the specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_notify_recommendations_received/"> notify_recommendations_received </a></td>
<td style="text-align: left;">Removes the specified recommendations from
the specified assistant's queue of newly available recommendations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_query_assistant/"> query_assistant </a></td>
<td style="text-align: left;">Performs a manual search against the
specified assistant</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_remove_knowledge_base_template_uri/"> remove_knowledge_base_template_uri </a></td>
<td style="text-align: left;">Removes a URI template from a knowledge
base</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_search_content/"> search_content </a></td>
<td style="text-align: left;">Searches for content in a specified
knowledge base</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_search_sessions/"> search_sessions </a></td>
<td style="text-align: left;">Searches for sessions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_start_content_upload/"> start_content_upload </a></td>
<td style="text-align: left;">Get a URL to upload content to a knowledge
base</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds the specified tags to the specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the specified tags from the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectwisdomservice_update_content/"> update_content </a></td>
<td style="text-align: left;">Updates information about the content</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectwisdomservice_update_knowledge_base_template_uri/"> update_knowledge_base_template_uri </a></td>
<td style="text-align: left;">Updates the template URI of a knowledge
base</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- connectwisdomservice()
    svc$create_assistant(
      Foo = 123
    )

    ## End(Not run)
