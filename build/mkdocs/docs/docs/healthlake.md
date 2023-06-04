<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>healthlake</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon HealthLake

### Description

Amazon HealthLake is a HIPAA eligibile service that allows customers to
store, transform, query, and analyze their FHIR-formatted data in a
consistent fashion in the cloud.

### Usage

    healthlake(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="healthlake_:_config">config</code></td>
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

    svc <- healthlake(
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
<td style="text-align: left;"><a href="../healthlake_create_fhir_datastore/"> create_fhir_datastore </a></td>
<td style="text-align: left;">Creates a Data Store that can ingest and
export FHIR formatted data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../healthlake_delete_fhir_datastore/"> delete_fhir_datastore </a></td>
<td style="text-align: left;">Deletes a Data Store</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../healthlake_describe_fhir_datastore/"> describe_fhir_datastore </a></td>
<td style="text-align: left;">Gets the properties associated with the
FHIR Data Store, including the Data Store ID, Data Store ARN, Data Store
name, Data Store status, created at, Data Store type version, and Data
Store endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../healthlake_describe_fhir_export_job/"> describe_fhir_export_job </a></td>
<td style="text-align: left;">Displays the properties of a FHIR export
job, including the ID, ARN, name, and the status of the job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../healthlake_describe_fhir_import_job/"> describe_fhir_import_job </a></td>
<td style="text-align: left;">Displays the properties of a FHIR import
job, including the ID, ARN, name, and the status of the job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../healthlake_list_fhir_datastores/"> list_fhir_datastores </a></td>
<td style="text-align: left;">Lists all FHIR Data Stores that are in the
user’s account, regardless of Data Store status</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../healthlake_list_fhir_export_jobs/"> list_fhir_export_jobs </a></td>
<td style="text-align: left;">Lists all FHIR export jobs associated with
an account and their statuses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../healthlake_list_fhir_import_jobs/"> list_fhir_import_jobs </a></td>
<td style="text-align: left;">Lists all FHIR import jobs associated with
an account and their statuses</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../healthlake_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of all existing tags
associated with a Data Store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../healthlake_start_fhir_export_job/"> start_fhir_export_job </a></td>
<td style="text-align: left;">Begins a FHIR export job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../healthlake_start_fhir_import_job/"> start_fhir_import_job </a></td>
<td style="text-align: left;">Begins a FHIR Import job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../healthlake_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds a user specifed key and value tag to
a Data Store</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../healthlake_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a Data Store</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- healthlake()
    svc$create_fhir_datastore(
      Foo = 123
    )

    ## End(Not run)
