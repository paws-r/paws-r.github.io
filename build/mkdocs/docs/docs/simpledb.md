<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>simpledb</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon SimpleDB

### Description

Amazon SimpleDB is a web service providing the core database functions
of data indexing and querying in the cloud. By offloading the time and
effort associated with building and operating a web-scale database,
SimpleDB provides developers the freedom to focus on application
development.

A traditional, clustered relational database requires a sizable upfront
capital outlay, is complex to design, and often requires extensive and
repetitive database administration. Amazon SimpleDB is dramatically
simpler, requiring no schema, automatically indexing your data and
providing a simple API for storage and access. This approach eliminates
the administrative burden of data modeling, index maintenance, and
performance tuning. Developers gain access to this functionality within
Amazon's proven computing environment, are able to scale instantly, and
pay only for what they use.

Visit
[http://aws.amazon.com/simpledb/](https://aws.amazon.com/simpledb/) for
more information.

### Usage

    simpledb(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="simpledb_:_config">config</code></td>
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

    svc <- simpledb(
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
<td style="text-align: left;"><a href="../simpledb_batch_delete_attributes/"> batch_delete_attributes </a></td>
<td style="text-align: left;">Performs multiple DeleteAttributes
operations in a single call, which reduces round trips and
latencies</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../simpledb_batch_put_attributes/"> batch_put_attributes </a></td>
<td style="text-align: left;">The BatchPutAttributes operation creates
or replaces attributes within one or more items</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../simpledb_create_domain/"> create_domain </a></td>
<td style="text-align: left;">The CreateDomain operation creates a new
domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../simpledb_delete_attributes/"> delete_attributes </a></td>
<td style="text-align: left;">Deletes one or more attributes associated
with an item</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../simpledb_delete_domain/"> delete_domain </a></td>
<td style="text-align: left;">The DeleteDomain operation deletes a
domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../simpledb_domain_metadata/"> domain_metadata </a></td>
<td style="text-align: left;">Returns information about the domain,
including when the domain was created, the number of items and
attributes in the domain, and the size of the attribute names and
values</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../simpledb_get_attributes/"> get_attributes </a></td>
<td style="text-align: left;">Returns all of the attributes associated
with the specified item</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../simpledb_list_domains/"> list_domains </a></td>
<td style="text-align: left;">The ListDomains operation lists all
domains associated with the Access Key ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../simpledb_put_attributes/"> put_attributes </a></td>
<td style="text-align: left;">The PutAttributes operation creates or
replaces attributes in an item</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../simpledb_select/"> select </a></td>
<td style="text-align: left;">The Select operation returns a set of
attributes for ItemNames that match the select expression</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- simpledb()
    svc$batch_delete_attributes(
      Foo = 123
    )

    ## End(Not run)
