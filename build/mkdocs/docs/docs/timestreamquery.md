<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamquery</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Timestream Query

### Description

Amazon Timestream Query

### Usage

    timestreamquery(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="timestreamquery_:_config">config</code></td>
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

    svc <- timestreamquery(
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
<td style="text-align: left;"><a href="../timestreamquery_cancel_query/"> cancel_query </a></td>
<td style="text-align: left;">Cancels a query that has been issued</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamquery_create_scheduled_query/"> create_scheduled_query </a></td>
<td style="text-align: left;">Create a scheduled query that will be run
on your behalf at the configured schedule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamquery_delete_scheduled_query/"> delete_scheduled_query </a></td>
<td style="text-align: left;">Deletes a given scheduled query</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamquery_describe_endpoints/"> describe_endpoints </a></td>
<td style="text-align: left;">DescribeEndpoints returns a list of
available endpoints to make Timestream API calls against</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamquery_describe_scheduled_query/"> describe_scheduled_query </a></td>
<td style="text-align: left;">Provides detailed information about a
scheduled query</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamquery_execute_scheduled_query/"> execute_scheduled_query </a></td>
<td style="text-align: left;">You can use this API to run a scheduled
query manually</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamquery_list_scheduled_queries/"> list_scheduled_queries </a></td>
<td style="text-align: left;">Gets a list of all scheduled queries in
the caller's Amazon account and Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamquery_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List all tags on a Timestream query
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamquery_prepare_query/"> prepare_query </a></td>
<td style="text-align: left;">A synchronous operation that allows you to
submit a query with parameters to be stored by Timestream for later
running</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamquery_query/"> query </a></td>
<td style="text-align: left;">Query is a synchronous operation that
enables you to run a query against your Amazon Timestream data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamquery_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associate a set of tags with a Timestream
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../timestreamquery_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the association of tags from a
Timestream query resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../timestreamquery_update_scheduled_query/"> update_scheduled_query </a></td>
<td style="text-align: left;">Update a scheduled query</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- timestreamquery()
    svc$cancel_query(
      Foo = 123
    )

    ## End(Not run)
