<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon QLDB

### Description

The resource management API for Amazon QLDB

### Usage

    qldb(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldb_:_config">config</code></td>
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

    svc <- qldb(
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
<td style="text-align: left;"><a href="../qldb_cancel_journal_kinesis_stream/"> cancel_journal_kinesis_stream </a></td>
<td style="text-align: left;">Ends a given Amazon QLDB journal
stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../qldb_create_ledger/"> create_ledger </a></td>
<td style="text-align: left;">Creates a new ledger in your Amazon Web
Services account in the current Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../qldb_delete_ledger/"> delete_ledger </a></td>
<td style="text-align: left;">Deletes a ledger and all of its
contents</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../qldb_describe_journal_kinesis_stream/"> describe_journal_kinesis_stream </a></td>
<td style="text-align: left;">Returns detailed information about a given
Amazon QLDB journal stream</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../qldb_describe_journal_s3_export/"> describe_journal_s3_export </a></td>
<td style="text-align: left;">Returns information about a journal export
job, including the ledger name, export ID, creation time, current
status, and the parameters of the original export creation request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../qldb_describe_ledger/"> describe_ledger </a></td>
<td style="text-align: left;">Returns information about a ledger,
including its state, permissions mode, encryption at rest settings, and
when it was created</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../qldb_export_journal_to_s3/"> export_journal_to_s3 </a></td>
<td style="text-align: left;">Exports journal contents within a date and
time range from a ledger into a specified Amazon Simple Storage Service
(Amazon S3) bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../qldb_get_block/"> get_block </a></td>
<td style="text-align: left;">Returns a block object at a specified
address in a journal</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../qldb_get_digest/"> get_digest </a></td>
<td style="text-align: left;">Returns the digest of a ledger at the
latest committed block in the journal</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../qldb_get_revision/"> get_revision </a></td>
<td style="text-align: left;">Returns a revision data object for a
specified document ID and block address</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../qldb_list_journal_kinesis_streams_for_ledger/"> list_journal_kinesis_streams_for_ledger </a></td>
<td style="text-align: left;">Returns all Amazon QLDB journal streams
for a given ledger</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../qldb_list_journal_s3_exports/"> list_journal_s3_exports </a></td>
<td style="text-align: left;">Returns all journal export jobs for all
ledgers that are associated with the current Amazon Web Services account
and Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../qldb_list_journal_s3_exports_for_ledger/"> list_journal_s3_exports_for_ledger </a></td>
<td style="text-align: left;">Returns all journal export jobs for a
specified ledger</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../qldb_list_ledgers/"> list_ledgers </a></td>
<td style="text-align: left;">Returns all ledgers that are associated
with the current Amazon Web Services account and Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../qldb_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns all tags for a specified Amazon
QLDB resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../qldb_stream_journal_to_kinesis/"> stream_journal_to_kinesis </a></td>
<td style="text-align: left;">Creates a journal stream for a given
Amazon QLDB ledger</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../qldb_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more tags to a specified
Amazon QLDB resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../qldb_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from a specified
Amazon QLDB resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../qldb_update_ledger/"> update_ledger </a></td>
<td style="text-align: left;">Updates properties on a ledger</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../qldb_update_ledger_permissions_mode/"> update_ledger_permissions_mode </a></td>
<td style="text-align: left;">Updates the permissions mode of a
ledger</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- qldb()
    svc$cancel_journal_kinesis_stream(
      Foo = 123
    )

    ## End(Not run)
