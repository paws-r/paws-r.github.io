<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS S3 Control

### Description

Amazon Web Services S3 Control provides access to Amazon S3 control
plane actions.

### Usage

    s3control(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3control_:_config">config</code></td>
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

    svc <- s3control(
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
<td style="text-align: left;"><a href="../s3control_create_access_point/"> create_access_point </a></td>
<td style="text-align: left;">Creates an access point and associates it
with the specified bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_create_access_point_for_object_lambda/"> create_access_point_for_object_lambda </a></td>
<td style="text-align: left;">Creates an Object Lambda Access Point</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_create_bucket/"> create_bucket </a></td>
<td style="text-align: left;">This action creates an Amazon S3 on
Outposts bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_create_job/"> create_job </a></td>
<td style="text-align: left;">You can use S3 Batch Operations to perform
large-scale batch actions on Amazon S3 objects</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_create_multi_region_access_point/"> create_multi_region_access_point </a></td>
<td style="text-align: left;">Creates a Multi-Region Access Point and
associates it with the specified buckets</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_delete_access_point/"> delete_access_point </a></td>
<td style="text-align: left;">Deletes the specified access point</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_delete_access_point_for_object_lambda/"> delete_access_point_for_object_lambda </a></td>
<td style="text-align: left;">Deletes the specified Object Lambda Access
Point</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_delete_access_point_policy/"> delete_access_point_policy </a></td>
<td style="text-align: left;">Deletes the access point policy for the
specified access point</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../s3control_delete_access_point_policy_for_object_lambda/"> delete_access_point_policy_for_object_lambda </a></td>
<td style="text-align: left;">Removes the resource policy for an Object
Lambda Access Point</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_delete_bucket/"> delete_bucket </a></td>
<td style="text-align: left;">This action deletes an Amazon S3 on
Outposts bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_delete_bucket_lifecycle_configuration/"> delete_bucket_lifecycle_configuration </a></td>
<td style="text-align: left;">This action deletes an Amazon S3 on
Outposts bucket's lifecycle configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_delete_bucket_policy/"> delete_bucket_policy </a></td>
<td style="text-align: left;">This action deletes an Amazon S3 on
Outposts bucket policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_delete_bucket_replication/"> delete_bucket_replication </a></td>
<td style="text-align: left;">This operation deletes an Amazon S3 on
Outposts bucket's replication configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_delete_bucket_tagging/"> delete_bucket_tagging </a></td>
<td style="text-align: left;">This action deletes an Amazon S3 on
Outposts bucket's tags</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_delete_job_tagging/"> delete_job_tagging </a></td>
<td style="text-align: left;">Removes the entire tag set from the
specified S3 Batch Operations job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_delete_multi_region_access_point/"> delete_multi_region_access_point </a></td>
<td style="text-align: left;">Deletes a Multi-Region Access Point</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_delete_public_access_block/"> delete_public_access_block </a></td>
<td style="text-align: left;">Removes the PublicAccessBlock
configuration for an Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_delete_storage_lens_configuration/"> delete_storage_lens_configuration </a></td>
<td style="text-align: left;">Deletes the Amazon S3 Storage Lens
configuration</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../s3control_delete_storage_lens_configuration_tagging/"> delete_storage_lens_configuration_tagging </a></td>
<td style="text-align: left;">Deletes the Amazon S3 Storage Lens
configuration tags</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_describe_job/"> describe_job </a></td>
<td style="text-align: left;">Retrieves the configuration parameters and
status for a Batch Operations job</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../s3control_describe_multi_region_access_point_operation/"> describe_multi_region_access_point_operation </a></td>
<td style="text-align: left;">Retrieves the status of an asynchronous
request to manage a Multi-Region Access Point</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_get_access_point/"> get_access_point </a></td>
<td style="text-align: left;">Returns configuration information about
the specified access point</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../s3control_get_access_point_configuration_for_object_lambda/"> get_access_point_configuration_for_object_lambda </a></td>
<td style="text-align: left;">Returns configuration for an Object Lambda
Access Point</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_get_access_point_for_object_lambda/"> get_access_point_for_object_lambda </a></td>
<td style="text-align: left;">Returns configuration information about
the specified Object Lambda Access Point</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_get_access_point_policy/"> get_access_point_policy </a></td>
<td style="text-align: left;">Returns the access point policy associated
with the specified access point</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../s3control_get_access_point_policy_for_object_lambda/"> get_access_point_policy_for_object_lambda </a></td>
<td style="text-align: left;">Returns the resource policy for an Object
Lambda Access Point</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_get_access_point_policy_status/"> get_access_point_policy_status </a></td>
<td style="text-align: left;">Indicates whether the specified access
point currently has a policy that allows public access</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../s3control_get_access_point_policy_status_for_object_lambda/"> get_access_point_policy_status_for_object_lambda </a></td>
<td style="text-align: left;">Returns the status of the resource policy
associated with an Object Lambda Access Point</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_get_bucket/"> get_bucket </a></td>
<td style="text-align: left;">Gets an Amazon S3 on Outposts bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_get_bucket_lifecycle_configuration/"> get_bucket_lifecycle_configuration </a></td>
<td style="text-align: left;">This action gets an Amazon S3 on Outposts
bucket's lifecycle configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_get_bucket_policy/"> get_bucket_policy </a></td>
<td style="text-align: left;">This action gets a bucket policy for an
Amazon S3 on Outposts bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_get_bucket_replication/"> get_bucket_replication </a></td>
<td style="text-align: left;">This operation gets an Amazon S3 on
Outposts bucket's replication configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_get_bucket_tagging/"> get_bucket_tagging </a></td>
<td style="text-align: left;">This action gets an Amazon S3 on Outposts
bucket's tags</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_get_bucket_versioning/"> get_bucket_versioning </a></td>
<td style="text-align: left;">This operation returns the versioning
state for S3 on Outposts buckets only</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_get_job_tagging/"> get_job_tagging </a></td>
<td style="text-align: left;">Returns the tags on an S3 Batch Operations
job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_get_multi_region_access_point/"> get_multi_region_access_point </a></td>
<td style="text-align: left;">Returns configuration information about
the specified Multi-Region Access Point</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_get_multi_region_access_point_policy/"> get_multi_region_access_point_policy </a></td>
<td style="text-align: left;">Returns the access control policy of the
specified Multi-Region Access Point</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../s3control_get_multi_region_access_point_policy_status/"> get_multi_region_access_point_policy_status </a></td>
<td style="text-align: left;">Indicates whether the specified
Multi-Region Access Point has an access control policy that allows
public access</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_get_multi_region_access_point_routes/"> get_multi_region_access_point_routes </a></td>
<td style="text-align: left;">Returns the routing configuration for a
Multi-Region Access Point, indicating which Regions are active or
passive</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_get_public_access_block/"> get_public_access_block </a></td>
<td style="text-align: left;">Retrieves the PublicAccessBlock
configuration for an Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_get_storage_lens_configuration/"> get_storage_lens_configuration </a></td>
<td style="text-align: left;">Gets the Amazon S3 Storage Lens
configuration</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../s3control_get_storage_lens_configuration_tagging/"> get_storage_lens_configuration_tagging </a></td>
<td style="text-align: left;">Gets the tags of Amazon S3 Storage Lens
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_list_access_points/"> list_access_points </a></td>
<td style="text-align: left;">Returns a list of the access points that
are owned by the current account that's associated with the specified
bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_list_access_points_for_object_lambda/"> list_access_points_for_object_lambda </a></td>
<td style="text-align: left;">Returns some or all (up to 1,000) access
points associated with the Object Lambda Access Point per call</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_list_jobs/"> list_jobs </a></td>
<td style="text-align: left;">Lists current S3 Batch Operations jobs and
jobs that have ended within the last 30 days for the Amazon Web Services
account making the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_list_multi_region_access_points/"> list_multi_region_access_points </a></td>
<td style="text-align: left;">Returns a list of the Multi-Region Access
Points currently associated with the specified Amazon Web Services
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_list_regional_buckets/"> list_regional_buckets </a></td>
<td style="text-align: left;">Returns a list of all Outposts buckets in
an Outpost that are owned by the authenticated sender of the
request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_list_storage_lens_configurations/"> list_storage_lens_configurations </a></td>
<td style="text-align: left;">Gets a list of Amazon S3 Storage Lens
configurations</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../s3control_put_access_point_configuration_for_object_lambda/"> put_access_point_configuration_for_object_lambda </a></td>
<td style="text-align: left;">Replaces configuration for an Object
Lambda Access Point</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_put_access_point_policy/"> put_access_point_policy </a></td>
<td style="text-align: left;">Associates an access policy with the
specified access point</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../s3control_put_access_point_policy_for_object_lambda/"> put_access_point_policy_for_object_lambda </a></td>
<td style="text-align: left;">Creates or replaces resource policy for an
Object Lambda Access Point</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_put_bucket_lifecycle_configuration/"> put_bucket_lifecycle_configuration </a></td>
<td style="text-align: left;">This action puts a lifecycle configuration
to an Amazon S3 on Outposts bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_put_bucket_policy/"> put_bucket_policy </a></td>
<td style="text-align: left;">This action puts a bucket policy to an
Amazon S3 on Outposts bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_put_bucket_replication/"> put_bucket_replication </a></td>
<td style="text-align: left;">This action creates an Amazon S3 on
Outposts bucket's replication configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_put_bucket_tagging/"> put_bucket_tagging </a></td>
<td style="text-align: left;">This action puts tags on an Amazon S3 on
Outposts bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_put_bucket_versioning/"> put_bucket_versioning </a></td>
<td style="text-align: left;">This operation sets the versioning state
for S3 on Outposts buckets only</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_put_job_tagging/"> put_job_tagging </a></td>
<td style="text-align: left;">Sets the supplied tag-set on an S3 Batch
Operations job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_put_multi_region_access_point_policy/"> put_multi_region_access_point_policy </a></td>
<td style="text-align: left;">Associates an access control policy with
the specified Multi-Region Access Point</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_put_public_access_block/"> put_public_access_block </a></td>
<td style="text-align: left;">Creates or modifies the PublicAccessBlock
configuration for an Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_put_storage_lens_configuration/"> put_storage_lens_configuration </a></td>
<td style="text-align: left;">Puts an Amazon S3 Storage Lens
configuration</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../s3control_put_storage_lens_configuration_tagging/"> put_storage_lens_configuration_tagging </a></td>
<td style="text-align: left;">Put or replace tags on an existing Amazon
S3 Storage Lens configuration</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../s3control_submit_multi_region_access_point_routes/"> submit_multi_region_access_point_routes </a></td>
<td style="text-align: left;">Submits an updated route configuration for
a Multi-Region Access Point</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../s3control_update_job_priority/"> update_job_priority </a></td>
<td style="text-align: left;">Updates an existing S3 Batch Operations
job's priority</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../s3control_update_job_status/"> update_job_status </a></td>
<td style="text-align: left;">Updates the status for the specified
job</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- s3control()
    svc$create_access_point(
      Foo = 123
    )

    ## End(Not run)
