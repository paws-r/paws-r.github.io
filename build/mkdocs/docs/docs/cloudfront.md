<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon CloudFront

### Description

This is the *Amazon CloudFront API Reference*. This guide is for
developers who need detailed information about CloudFront API actions,
data types, and errors. For detailed information about CloudFront
features, see the *Amazon CloudFront Developer Guide*.

### Usage

    cloudfront(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_:_config">config</code></td>
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

    svc <- cloudfront(
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
<td style="text-align: left;"><a href="../cloudfront_associate_alias/"> associate_alias </a></td>
<td style="text-align: left;">Associates an alias (also known as a CNAME
or an alternate domain name) with a CloudFront distribution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_copy_distribution/"> copy_distribution </a></td>
<td style="text-align: left;">Creates a staging distribution using the
configuration of the provided primary distribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_create_cache_policy/"> create_cache_policy </a></td>
<td style="text-align: left;">Creates a cache policy</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../cloudfront_create_cloud_front_origin_access_identity/"> create_cloud_front_origin_access_identity </a></td>
<td style="text-align: left;">Creates a new origin access identity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_create_continuous_deployment_policy/"> create_continuous_deployment_policy </a></td>
<td style="text-align: left;">Creates a continuous deployment policy
that distributes traffic for a custom domain name to two different
CloudFront distributions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_create_distribution/"> create_distribution </a></td>
<td style="text-align: left;">Creates a CloudFront distribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_create_distribution_with_tags/"> create_distribution_with_tags </a></td>
<td style="text-align: left;">Create a new distribution with tags</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_create_field_level_encryption_config/"> create_field_level_encryption_config </a></td>
<td style="text-align: left;">Create a new field-level encryption
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_create_field_level_encryption_profile/"> create_field_level_encryption_profile </a></td>
<td style="text-align: left;">Create a field-level encryption
profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_create_function/"> create_function </a></td>
<td style="text-align: left;">Creates a CloudFront function</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_create_invalidation/"> create_invalidation </a></td>
<td style="text-align: left;">Create a new invalidation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_create_key_group/"> create_key_group </a></td>
<td style="text-align: left;">Creates a key group that you can use with
CloudFront signed URLs and signed cookies</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_create_monitoring_subscription/"> create_monitoring_subscription </a></td>
<td style="text-align: left;">Enables additional CloudWatch metrics for
the specified CloudFront distribution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_create_origin_access_control/"> create_origin_access_control </a></td>
<td style="text-align: left;">Creates a new origin access control in
CloudFront</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_create_origin_request_policy/"> create_origin_request_policy </a></td>
<td style="text-align: left;">Creates an origin request policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_create_public_key/"> create_public_key </a></td>
<td style="text-align: left;">Uploads a public key to CloudFront that
you can use with signed URLs and signed cookies, or with field-level
encryption</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_create_realtime_log_config/"> create_realtime_log_config </a></td>
<td style="text-align: left;">Creates a real-time log configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_create_response_headers_policy/"> create_response_headers_policy </a></td>
<td style="text-align: left;">Creates a response headers policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_create_streaming_distribution/"> create_streaming_distribution </a></td>
<td style="text-align: left;">This API is deprecated</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../cloudfront_create_streaming_distribution_with_tags/"> create_streaming_distribution_with_tags </a></td>
<td style="text-align: left;">This API is deprecated</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_delete_cache_policy/"> delete_cache_policy </a></td>
<td style="text-align: left;">Deletes a cache policy</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../cloudfront_delete_cloud_front_origin_access_identity/"> delete_cloud_front_origin_access_identity </a></td>
<td style="text-align: left;">Delete an origin access identity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_delete_continuous_deployment_policy/"> delete_continuous_deployment_policy </a></td>
<td style="text-align: left;">Deletes a continuous deployment
policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_delete_distribution/"> delete_distribution </a></td>
<td style="text-align: left;">Delete a distribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_delete_field_level_encryption_config/"> delete_field_level_encryption_config </a></td>
<td style="text-align: left;">Remove a field-level encryption
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_delete_field_level_encryption_profile/"> delete_field_level_encryption_profile </a></td>
<td style="text-align: left;">Remove a field-level encryption
profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_delete_function/"> delete_function </a></td>
<td style="text-align: left;">Deletes a CloudFront function</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_delete_key_group/"> delete_key_group </a></td>
<td style="text-align: left;">Deletes a key group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_delete_monitoring_subscription/"> delete_monitoring_subscription </a></td>
<td style="text-align: left;">Disables additional CloudWatch metrics for
the specified CloudFront distribution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_delete_origin_access_control/"> delete_origin_access_control </a></td>
<td style="text-align: left;">Deletes a CloudFront origin access
control</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_delete_origin_request_policy/"> delete_origin_request_policy </a></td>
<td style="text-align: left;">Deletes an origin request policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_delete_public_key/"> delete_public_key </a></td>
<td style="text-align: left;">Remove a public key you previously added
to CloudFront</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_delete_realtime_log_config/"> delete_realtime_log_config </a></td>
<td style="text-align: left;">Deletes a real-time log configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_delete_response_headers_policy/"> delete_response_headers_policy </a></td>
<td style="text-align: left;">Deletes a response headers policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_delete_streaming_distribution/"> delete_streaming_distribution </a></td>
<td style="text-align: left;">Delete a streaming distribution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_describe_function/"> describe_function </a></td>
<td style="text-align: left;">Gets configuration information and
metadata about a CloudFront function, but not the function's code</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_get_cache_policy/"> get_cache_policy </a></td>
<td style="text-align: left;">Gets a cache policy, including the
following metadata:</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_get_cache_policy_config/"> get_cache_policy_config </a></td>
<td style="text-align: left;">Gets a cache policy configuration</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../cloudfront_get_cloud_front_origin_access_identity/"> get_cloud_front_origin_access_identity </a></td>
<td style="text-align: left;">Get the information about an origin access
identity</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../cloudfront_get_cloud_front_origin_access_identity_config/"> get_cloud_front_origin_access_identity_config </a></td>
<td style="text-align: left;">Get the configuration information about an
origin access identity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_get_continuous_deployment_policy/"> get_continuous_deployment_policy </a></td>
<td style="text-align: left;">Gets a continuous deployment policy,
including metadata (the policy's identifier and the date and time when
the policy was last modified)</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../cloudfront_get_continuous_deployment_policy_config/"> get_continuous_deployment_policy_config </a></td>
<td style="text-align: left;">Gets configuration information about a
continuous deployment policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_get_distribution/"> get_distribution </a></td>
<td style="text-align: left;">Get the information about a
distribution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_get_distribution_config/"> get_distribution_config </a></td>
<td style="text-align: left;">Get the configuration information about a
distribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_get_field_level_encryption/"> get_field_level_encryption </a></td>
<td style="text-align: left;">Get the field-level encryption
configuration information</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_get_field_level_encryption_config/"> get_field_level_encryption_config </a></td>
<td style="text-align: left;">Get the field-level encryption
configuration information</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_get_field_level_encryption_profile/"> get_field_level_encryption_profile </a></td>
<td style="text-align: left;">Get the field-level encryption profile
information</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../cloudfront_get_field_level_encryption_profile_config/"> get_field_level_encryption_profile_config </a></td>
<td style="text-align: left;">Get the field-level encryption profile
configuration information</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_get_function/"> get_function </a></td>
<td style="text-align: left;">Gets the code of a CloudFront
function</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_get_invalidation/"> get_invalidation </a></td>
<td style="text-align: left;">Get the information about an
invalidation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_get_key_group/"> get_key_group </a></td>
<td style="text-align: left;">Gets a key group, including the date and
time when the key group was last modified</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_get_key_group_config/"> get_key_group_config </a></td>
<td style="text-align: left;">Gets a key group configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_get_monitoring_subscription/"> get_monitoring_subscription </a></td>
<td style="text-align: left;">Gets information about whether additional
CloudWatch metrics are enabled for the specified CloudFront
distribution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_get_origin_access_control/"> get_origin_access_control </a></td>
<td style="text-align: left;">Gets a CloudFront origin access control,
including its unique identifier</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_get_origin_access_control_config/"> get_origin_access_control_config </a></td>
<td style="text-align: left;">Gets a CloudFront origin access control
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_get_origin_request_policy/"> get_origin_request_policy </a></td>
<td style="text-align: left;">Gets an origin request policy, including
the following metadata:</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_get_origin_request_policy_config/"> get_origin_request_policy_config </a></td>
<td style="text-align: left;">Gets an origin request policy
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_get_public_key/"> get_public_key </a></td>
<td style="text-align: left;">Gets a public key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_get_public_key_config/"> get_public_key_config </a></td>
<td style="text-align: left;">Gets a public key configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_get_realtime_log_config/"> get_realtime_log_config </a></td>
<td style="text-align: left;">Gets a real-time log configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_get_response_headers_policy/"> get_response_headers_policy </a></td>
<td style="text-align: left;">Gets a response headers policy, including
metadata (the policy's identifier and the date and time when the policy
was last modified)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_get_response_headers_policy_config/"> get_response_headers_policy_config </a></td>
<td style="text-align: left;">Gets a response headers policy
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_get_streaming_distribution/"> get_streaming_distribution </a></td>
<td style="text-align: left;">Gets information about a specified RTMP
distribution, including the distribution configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_get_streaming_distribution_config/"> get_streaming_distribution_config </a></td>
<td style="text-align: left;">Get the configuration information about a
streaming distribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_list_cache_policies/"> list_cache_policies </a></td>
<td style="text-align: left;">Gets a list of cache policies</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../cloudfront_list_cloud_front_origin_access_identities/"> list_cloud_front_origin_access_identities </a></td>
<td style="text-align: left;">Lists origin access identities</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_list_conflicting_aliases/"> list_conflicting_aliases </a></td>
<td style="text-align: left;">Gets a list of aliases (also called CNAMEs
or alternate domain names) that conflict or overlap with the provided
alias, and the associated CloudFront distributions and Amazon Web
Services accounts for each conflicting alias</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_list_continuous_deployment_policies/"> list_continuous_deployment_policies </a></td>
<td style="text-align: left;">Gets a list of the continuous deployment
policies in your Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_list_distributions/"> list_distributions </a></td>
<td style="text-align: left;">List CloudFront distributions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_list_distributions_by_cache_policy_id/"> list_distributions_by_cache_policy_id </a></td>
<td style="text-align: left;">Gets a list of distribution IDs for
distributions that have a cache behavior that's associated with the
specified cache policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_list_distributions_by_key_group/"> list_distributions_by_key_group </a></td>
<td style="text-align: left;">Gets a list of distribution IDs for
distributions that have a cache behavior that references the specified
key group</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../cloudfront_list_distributions_by_origin_request_policy_id/"> list_distributions_by_origin_request_policy_id </a></td>
<td style="text-align: left;">Gets a list of distribution IDs for
distributions that have a cache behavior that's associated with the
specified origin request policy</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../cloudfront_list_distributions_by_realtime_log_config/"> list_distributions_by_realtime_log_config </a></td>
<td style="text-align: left;">Gets a list of distributions that have a
cache behavior that's associated with the specified real-time log
configuration</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../cloudfront_list_distributions_by_response_headers_policy_id/"> list_distributions_by_response_headers_policy_id </a></td>
<td style="text-align: left;">Gets a list of distribution IDs for
distributions that have a cache behavior that's associated with the
specified response headers policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_list_distributions_by_web_acl_id/"> list_distributions_by_web_acl_id </a></td>
<td style="text-align: left;">List the distributions that are associated
with a specified WAF web ACL</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_list_field_level_encryption_configs/"> list_field_level_encryption_configs </a></td>
<td style="text-align: left;">List all field-level encryption
configurations that have been created in CloudFront for this
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_list_field_level_encryption_profiles/"> list_field_level_encryption_profiles </a></td>
<td style="text-align: left;">Request a list of field-level encryption
profiles that have been created in CloudFront for this account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_list_functions/"> list_functions </a></td>
<td style="text-align: left;">Gets a list of all CloudFront functions in
your Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_list_invalidations/"> list_invalidations </a></td>
<td style="text-align: left;">Lists invalidation batches</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_list_key_groups/"> list_key_groups </a></td>
<td style="text-align: left;">Gets a list of key groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_list_origin_access_controls/"> list_origin_access_controls </a></td>
<td style="text-align: left;">Gets the list of CloudFront origin access
controls in this Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_list_origin_request_policies/"> list_origin_request_policies </a></td>
<td style="text-align: left;">Gets a list of origin request
policies</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_list_public_keys/"> list_public_keys </a></td>
<td style="text-align: left;">List all public keys that have been added
to CloudFront for this account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_list_realtime_log_configs/"> list_realtime_log_configs </a></td>
<td style="text-align: left;">Gets a list of real-time log
configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_list_response_headers_policies/"> list_response_headers_policies </a></td>
<td style="text-align: left;">Gets a list of response headers
policies</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_list_streaming_distributions/"> list_streaming_distributions </a></td>
<td style="text-align: left;">List streaming distributions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List tags for a CloudFront resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_publish_function/"> publish_function </a></td>
<td style="text-align: left;">Publishes a CloudFront function by copying
the function code from the DEVELOPMENT stage to LIVE</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Add tags to a CloudFront resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_test_function/"> test_function </a></td>
<td style="text-align: left;">Tests a CloudFront function</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Remove tags from a CloudFront
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_update_cache_policy/"> update_cache_policy </a></td>
<td style="text-align: left;">Updates a cache policy configuration</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../cloudfront_update_cloud_front_origin_access_identity/"> update_cloud_front_origin_access_identity </a></td>
<td style="text-align: left;">Update an origin access identity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_update_continuous_deployment_policy/"> update_continuous_deployment_policy </a></td>
<td style="text-align: left;">Updates a continuous deployment
policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_update_distribution/"> update_distribution </a></td>
<td style="text-align: left;">Updates the configuration for a CloudFront
distribution</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../cloudfront_update_distribution_with_staging_config/"> update_distribution_with_staging_config </a></td>
<td style="text-align: left;">Copies the staging distribution's
configuration to its corresponding primary distribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_update_field_level_encryption_config/"> update_field_level_encryption_config </a></td>
<td style="text-align: left;">Update a field-level encryption
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_update_field_level_encryption_profile/"> update_field_level_encryption_profile </a></td>
<td style="text-align: left;">Update a field-level encryption
profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_update_function/"> update_function </a></td>
<td style="text-align: left;">Updates a CloudFront function</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_update_key_group/"> update_key_group </a></td>
<td style="text-align: left;">Updates a key group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_update_origin_access_control/"> update_origin_access_control </a></td>
<td style="text-align: left;">Updates a CloudFront origin access
control</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_update_origin_request_policy/"> update_origin_request_policy </a></td>
<td style="text-align: left;">Updates an origin request policy
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_update_public_key/"> update_public_key </a></td>
<td style="text-align: left;">Update public key information</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_update_realtime_log_config/"> update_realtime_log_config </a></td>
<td style="text-align: left;">Updates a real-time log configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudfront_update_response_headers_policy/"> update_response_headers_policy </a></td>
<td style="text-align: left;">Updates a response headers policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudfront_update_streaming_distribution/"> update_streaming_distribution </a></td>
<td style="text-align: left;">Update a streaming distribution</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cloudfront()
    svc$associate_alias(
      Foo = 123
    )

    ## End(Not run)
