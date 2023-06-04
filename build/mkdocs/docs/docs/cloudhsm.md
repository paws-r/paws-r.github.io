<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon CloudHSM

### Description

AWS CloudHSM Service

This is documentation for **AWS CloudHSM Classic**. For more
information, see [AWS CloudHSM Classic
FAQs](https://aws.amazon.com/cloudhsm/faqs/), the AWS CloudHSM Classic
User Guide, and the [AWS CloudHSM Classic API
Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS
CloudHSM](https://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the
[AWS CloudHSM API
Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

### Usage

    cloudhsm(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsm_:_config">config</code></td>
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

    svc <- cloudhsm(
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
<td style="text-align: left;"><a href="../cloudhsm_add_tags_to_resource/"> add_tags_to_resource </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsm_create_hapg/"> create_hapg </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsm_create_hsm/"> create_hsm </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsm_create_luna_client/"> create_luna_client </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsm_delete_hapg/"> delete_hapg </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsm_delete_hsm/"> delete_hsm </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsm_delete_luna_client/"> delete_luna_client </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsm_describe_hapg/"> describe_hapg </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsm_describe_hsm/"> describe_hsm </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsm_describe_luna_client/"> describe_luna_client </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsm_get_config/"> get_config </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsm_list_available_zones/"> list_available_zones </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsm_list_hapgs/"> list_hapgs </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsm_list_hsms/"> list_hsms </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsm_list_luna_clients/"> list_luna_clients </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsm_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsm_modify_hapg/"> modify_hapg </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsm_modify_hsm/"> modify_hsm </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudhsm_modify_luna_client/"> modify_luna_client </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudhsm_remove_tags_from_resource/"> remove_tags_from_resource </a></td>
<td style="text-align: left;">This is documentation for AWS CloudHSM
Classic</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cloudhsm()
    svc$add_tags_to_resource(
      Foo = 123
    )

    ## End(Not run)
