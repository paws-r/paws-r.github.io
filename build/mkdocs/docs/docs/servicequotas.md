<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Service Quotas

### Description

With Service Quotas, you can view and manage your quotas easily as your
AWS workloads grow. Quotas, also referred to as limits, are the maximum
number of resources that you can create in your AWS account. For more
information, see the [Service Quotas User
Guide](https://docs.aws.amazon.com/servicequotas/latest/userguide/).

### Usage

    servicequotas(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicequotas_:_config">config</code></td>
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

    svc <- servicequotas(
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
<td style="text-align: left;"><a href="../servicequotas_associate_service_quota_template/"> associate_service_quota_template </a></td>
<td style="text-align: left;">Associates your quota request template
with your organization</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../servicequotas_delete_service_quota_increase_request_from_template/"> delete_service_quota_increase_request_from_template </a></td>
<td style="text-align: left;">Deletes the quota increase request for the
specified quota from your quota request template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicequotas_disassociate_service_quota_template/"> disassociate_service_quota_template </a></td>
<td style="text-align: left;">Disables your quota request template</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../servicequotas_get_association_for_service_quota_template/"> get_association_for_service_quota_template </a></td>
<td style="text-align: left;">Retrieves the status of the association
for the quota request template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicequotas_get_aws_default_service_quota/"> get_aws_default_service_quota </a></td>
<td style="text-align: left;">Retrieves the default value for the
specified quota</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicequotas_get_requested_service_quota_change/"> get_requested_service_quota_change </a></td>
<td style="text-align: left;">Retrieves information about the specified
quota increase request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicequotas_get_service_quota/"> get_service_quota </a></td>
<td style="text-align: left;">Retrieves the applied quota value for the
specified quota</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../servicequotas_get_service_quota_increase_request_from_template/"> get_service_quota_increase_request_from_template </a></td>
<td style="text-align: left;">Retrieves information about the specified
quota increase request in your quota request template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicequotas_list_aws_default_service_quotas/"> list_aws_default_service_quotas </a></td>
<td style="text-align: left;">Lists the default values for the quotas
for the specified AWS service</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../servicequotas_list_requested_service_quota_change_history/"> list_requested_service_quota_change_history </a></td>
<td style="text-align: left;">Retrieves the quota increase requests for
the specified service</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../servicequotas_list_requested_service_quota_change_history_by_quota/"> list_requested_service_quota_change_history_by_quota </a></td>
<td style="text-align: left;">Retrieves the quota increase requests for
the specified quota</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../servicequotas_list_service_quota_increase_requests_in_template/"> list_service_quota_increase_requests_in_template </a></td>
<td style="text-align: left;">Lists the quota increase requests in the
specified quota request template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicequotas_list_service_quotas/"> list_service_quotas </a></td>
<td style="text-align: left;">Lists the applied quota values for the
specified AWS service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicequotas_list_services/"> list_services </a></td>
<td style="text-align: left;">Lists the names and codes for the services
integrated with Service Quotas</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicequotas_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of the tags assigned to the
specified applied quota</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../servicequotas_put_service_quota_increase_request_into_template/"> put_service_quota_increase_request_into_template </a></td>
<td style="text-align: left;">Adds a quota increase request to your
quota request template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicequotas_request_service_quota_increase/"> request_service_quota_increase </a></td>
<td style="text-align: left;">Submits a quota increase request for the
specified quota</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../servicequotas_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds tags to the specified applied
quota</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../servicequotas_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from the specified applied
quota</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- servicequotas()
    svc$associate_service_quota_template(
      Foo = 123
    )

    ## End(Not run)
