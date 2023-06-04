<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecatalog</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Marketplace Catalog Service

### Description

Catalog API actions allow you to manage your entities through list,
describe, and update capabilities. An entity can be a product or an
offer on AWS Marketplace.

You can automate your entity update process by integrating the AWS
Marketplace Catalog API with your AWS Marketplace product build or
deployment pipelines. You can also create your own applications on top
of the Catalog API to manage your products on AWS Marketplace.

### Usage

    marketplacecatalog(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="marketplacecatalog_:_config">config</code></td>
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

    svc <- marketplacecatalog(
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
<td style="text-align: left;"><a href="../marketplacecatalog_cancel_change_set/"> cancel_change_set </a></td>
<td style="text-align: left;">Used to cancel an open change request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../marketplacecatalog_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes a resource-based policy on an
Entity that is identified by its resource ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../marketplacecatalog_describe_change_set/"> describe_change_set </a></td>
<td style="text-align: left;">Provides information about a given change
set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../marketplacecatalog_describe_entity/"> describe_entity </a></td>
<td style="text-align: left;">Returns the metadata and content of the
entity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../marketplacecatalog_get_resource_policy/"> get_resource_policy </a></td>
<td style="text-align: left;">Gets a resource-based policy of an Entity
that is identified by its resource ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../marketplacecatalog_list_change_sets/"> list_change_sets </a></td>
<td style="text-align: left;">Returns the list of change sets owned by
the account being used to make the call</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../marketplacecatalog_list_entities/"> list_entities </a></td>
<td style="text-align: left;">Provides the list of entities of a given
type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../marketplacecatalog_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags that have been added to a
resource (either an entity or change set)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../marketplacecatalog_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Attaches a resource-based policy to an
Entity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../marketplacecatalog_start_change_set/"> start_change_set </a></td>
<td style="text-align: left;">Allows you to request changes for your
entities</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../marketplacecatalog_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Tags a resource (either an entity or
change set)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../marketplacecatalog_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a tag or list of tags from a
resource (either an entity or change set)</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- marketplacecatalog()
    svc$cancel_change_set(
      Foo = 123
    )

    ## End(Not run)
