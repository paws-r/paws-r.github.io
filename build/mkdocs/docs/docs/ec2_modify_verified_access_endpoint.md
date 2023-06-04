<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_verified_access_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the configuration of the specified Amazon Web Services Verified Access endpoint

### Description

Modifies the configuration of the specified Amazon Web Services Verified
Access endpoint.

### Usage

    ec2_modify_verified_access_endpoint(VerifiedAccessEndpointId,
      VerifiedAccessGroupId, LoadBalancerOptions, NetworkInterfaceOptions,
      Description, ClientToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_verified_access_endpoint_:_VerifiedAccessEndpointId">VerifiedAccessEndpointId</code></td>
<td><p>[required] The ID of the Verified Access endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_verified_access_endpoint_:_VerifiedAccessGroupId">VerifiedAccessGroupId</code></td>
<td><p>The ID of the Verified Access group.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_verified_access_endpoint_:_LoadBalancerOptions">LoadBalancerOptions</code></td>
<td><p>The load balancer details if creating the Verified Access
endpoint as <code>load-balancer</code>type.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_verified_access_endpoint_:_NetworkInterfaceOptions">NetworkInterfaceOptions</code></td>
<td><p>The network interface options.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_verified_access_endpoint_:_Description">Description</code></td>
<td><p>A description for the Verified Access endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_verified_access_endpoint_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive token that you provide to ensure
idempotency of your modification request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_verified_access_endpoint_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VerifiedAccessEndpoint = list(
        VerifiedAccessInstanceId = "string",
        VerifiedAccessGroupId = "string",
        VerifiedAccessEndpointId = "string",
        ApplicationDomain = "string",
        EndpointType = "load-balancer"|"network-interface",
        AttachmentType = "vpc",
        DomainCertificateArn = "string",
        EndpointDomain = "string",
        DeviceValidationDomain = "string",
        SecurityGroupIds = list(
          "string"
        ),
        LoadBalancerOptions = list(
          Protocol = "http"|"https",
          Port = 123,
          LoadBalancerArn = "string",
          SubnetIds = list(
            "string"
          )
        ),
        NetworkInterfaceOptions = list(
          NetworkInterfaceId = "string",
          Protocol = "http"|"https",
          Port = 123
        ),
        Status = list(
          Code = "pending"|"active"|"updating"|"deleting"|"deleted",
          Message = "string"
        ),
        Description = "string",
        CreationTime = "string",
        LastUpdatedTime = "string",
        DeletionTime = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$modify_verified_access_endpoint(
      VerifiedAccessEndpointId = "string",
      VerifiedAccessGroupId = "string",
      LoadBalancerOptions = list(
        SubnetIds = list(
          "string"
        ),
        Protocol = "http"|"https",
        Port = 123
      ),
      NetworkInterfaceOptions = list(
        Protocol = "http"|"https",
        Port = 123
      ),
      Description = "string",
      ClientToken = "string",
      DryRun = TRUE|FALSE
    )
