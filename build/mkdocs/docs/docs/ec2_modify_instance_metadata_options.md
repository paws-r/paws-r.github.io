<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_instance_metadata_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modify the instance metadata parameters on a running or stopped instance

### Description

Modify the instance metadata parameters on a running or stopped
instance. When you modify the parameters on a stopped instance, they are
applied when the instance is started. When you modify the parameters on
a running instance, the API responds with a state of “pending”. After
the parameter modifications are successfully applied to the instance,
the state of the modifications changes from “pending” to “applied” in
subsequent describe-instances API calls. For more information, see
[Instance metadata and user
data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_modify_instance_metadata_options(InstanceId, HttpTokens,
      HttpPutResponseHopLimit, HttpEndpoint, DryRun, HttpProtocolIpv6,
      InstanceMetadataTags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_instance_metadata_options_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_metadata_options_:_HttpTokens">HttpTokens</code></td>
<td><p>IMDSv2 uses token-backed sessions. Set the use of HTTP tokens to
<code>optional</code> (in other words, set the use of IMDSv2 to
<code>optional</code>) or <code>required</code> (in other words, set the
use of IMDSv2 to <code>required</code>).</p>
<ul>
<li><p><code>optional</code> - When IMDSv2 is optional, you can choose
to retrieve instance metadata with or without a session token in your
request. If you retrieve the IAM role credentials without a token, the
IMDSv1 role credentials are returned. If you retrieve the IAM role
credentials using a valid session token, the IMDSv2 role credentials are
returned.</p></li>
<li><p><code>required</code> - When IMDSv2 is required, you must send a
session token with any instance metadata retrieval requests. In this
state, retrieving the IAM role credentials always returns IMDSv2
credentials; IMDSv1 credentials are not available.</p></li>
</ul>
<p>Default: <code>optional</code></p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_metadata_options_:_HttpPutResponseHopLimit">HttpPutResponseHopLimit</code></td>
<td><p>The desired HTTP PUT response hop limit for instance metadata
requests. The larger the number, the further instance metadata requests
can travel. If no parameter is specified, the existing state is
maintained.</p>
<p>Possible values: Integers from 1 to 64</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_metadata_options_:_HttpEndpoint">HttpEndpoint</code></td>
<td><p>Enables or disables the HTTP metadata endpoint on your instances.
If this parameter is not specified, the existing state is
maintained.</p>
<p>If you specify a value of <code>disabled</code>, you cannot access
your instance metadata.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_metadata_options_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_metadata_options_:_HttpProtocolIpv6">HttpProtocolIpv6</code></td>
<td><p>Enables or disables the IPv6 endpoint for the instance metadata
service. This setting applies only if you have enabled the HTTP metadata
endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_metadata_options_:_InstanceMetadataTags">InstanceMetadataTags</code></td>
<td><p>Set to <code>enabled</code> to allow access to instance tags from
the instance metadata. Set to <code>disabled</code> to turn off access
to instance tags from the instance metadata. For more information, see
<a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS">Work
with instance tags using the instance metadata</a>.</p>
<p>Default: <code>disabled</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceId = "string",
      InstanceMetadataOptions = list(
        State = "pending"|"applied",
        HttpTokens = "optional"|"required",
        HttpPutResponseHopLimit = 123,
        HttpEndpoint = "disabled"|"enabled",
        HttpProtocolIpv6 = "disabled"|"enabled",
        InstanceMetadataTags = "disabled"|"enabled"
      )
    )

### Request syntax

    svc$modify_instance_metadata_options(
      InstanceId = "string",
      HttpTokens = "optional"|"required",
      HttpPutResponseHopLimit = 123,
      HttpEndpoint = "disabled"|"enabled",
      DryRun = TRUE|FALSE,
      HttpProtocolIpv6 = "disabled"|"enabled",
      InstanceMetadataTags = "disabled"|"enabled"
    )
