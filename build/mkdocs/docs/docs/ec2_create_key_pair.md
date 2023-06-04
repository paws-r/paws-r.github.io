<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_key_pair</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an ED25519 or 2048-bit RSA key pair with the specified name and in the specified PEM or PPK format

### Description

Creates an ED25519 or 2048-bit RSA key pair with the specified name and
in the specified PEM or PPK format. Amazon EC2 stores the public key and
displays the private key for you to save to a file. The private key is
returned as an unencrypted PEM encoded PKCS#1 private key or an
unencrypted PPK formatted private key for use with PuTTY. If a key with
the specified name already exists, Amazon EC2 returns an error.

The key pair returned to you is available only in the Amazon Web
Services Region in which you create it. If you prefer, you can create
your own key pair using a third-party tool and upload it to any Region
using `import_key_pair`.

You can have up to 5,000 key pairs per Amazon Web Services Region.

For more information, see [Amazon EC2 key
pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_create_key_pair(KeyName, DryRun, KeyType, TagSpecifications,
      KeyFormat)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_key_pair_:_KeyName">KeyName</code></td>
<td><p>[required] A unique name for the key pair.</p>
<p>Constraints: Up to 255 ASCII characters</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_key_pair_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_key_pair_:_KeyType">KeyType</code></td>
<td><p>The type of key pair. Note that ED25519 keys are not supported
for Windows instances.</p>
<p>Default: <code>rsa</code></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_key_pair_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the new key pair.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_key_pair_:_KeyFormat">KeyFormat</code></td>
<td><p>The format of the key pair.</p>
<p>Default: <code>pem</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyFingerprint = "string",
      KeyMaterial = "string",
      KeyName = "string",
      KeyPairId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$create_key_pair(
      KeyName = "string",
      DryRun = TRUE|FALSE,
      KeyType = "rsa"|"ed25519",
      TagSpecifications = list(
        list(
          ResourceType = "capacity-reservation"|"client-vpn-endpoint"|"customer-gateway"|"carrier-gateway"|"coip-pool"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"instance-event-window"|"internet-gateway"|"ipam"|"ipam-pool"|"ipam-scope"|"ipv4pool-ec2"|"ipv6pool-ec2"|"key-pair"|"launch-template"|"local-gateway"|"local-gateway-route-table"|"local-gateway-virtual-interface"|"local-gateway-virtual-interface-group"|"local-gateway-route-table-vpc-association"|"local-gateway-route-table-virtual-interface-group-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"network-insights-access-scope"|"network-insights-access-scope-analysis"|"placement-group"|"prefix-list"|"replace-root-volume-task"|"reserved-instances"|"route-table"|"security-group"|"security-group-rule"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"subnet-cidr-reservation"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-policy-table"|"transit-gateway-route-table"|"transit-gateway-route-table-announcement"|"volume"|"vpc"|"vpc-endpoint"|"vpc-endpoint-connection"|"vpc-endpoint-service"|"vpc-endpoint-service-permission"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log"|"capacity-reservation-fleet"|"traffic-mirror-filter-rule"|"vpc-endpoint-connection-device-type"|"verified-access-instance"|"verified-access-group"|"verified-access-endpoint"|"verified-access-policy"|"verified-access-trust-provider"|"vpn-connection-device-type"|"vpc-block-public-access-exclusion"|"ipam-resource-discovery"|"ipam-resource-discovery-association",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      KeyFormat = "pem"|"ppk"
    )

### Examples

    ## Not run: 
    # This example creates a key pair named my-key-pair.
    svc$create_key_pair(
      KeyName = "my-key-pair"
    )

    ## End(Not run)
