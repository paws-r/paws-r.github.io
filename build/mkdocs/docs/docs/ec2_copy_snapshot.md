<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_copy_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3

### Description

Copies a point-in-time snapshot of an EBS volume and stores it in Amazon
S3. You can copy a snapshot within the same Region, from one Region to
another, or from a Region to an Outpost. You can't copy a snapshot from
an Outpost to a Region, from one Outpost to another, or within the same
Outpost.

You can use the snapshot to create EBS volumes or Amazon Machine Images
(AMIs).

When copying snapshots to a Region, copies of encrypted EBS snapshots
remain encrypted. Copies of unencrypted snapshots remain unencrypted,
unless you enable encryption for the snapshot copy operation. By
default, encrypted snapshot copies use the default Key Management
Service (KMS) KMS key; however, you can specify a different KMS key. To
copy an encrypted snapshot that has been shared from another account,
you must have permissions for the KMS key used to encrypt the snapshot.

Snapshots copied to an Outpost are encrypted by default using the
default encryption key for the Region, or a different key that you
specify in the request using **KmsKeyId**. Outposts do not support
unencrypted snapshots. For more information, [Amazon EBS local snapshots
on
Outposts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami)
in the *Amazon Elastic Compute Cloud User Guide*.

Snapshots created by copying another snapshot have an arbitrary volume
ID that should not be used for any purpose.

For more information, see [Copy an Amazon EBS
snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-copy-snapshot.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_copy_snapshot(Description, DestinationOutpostArn, DestinationRegion,
      Encrypted, KmsKeyId, PresignedUrl, SourceRegion, SourceSnapshotId,
      TagSpecifications, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_copy_snapshot_:_Description">Description</code></td>
<td><p>A description for the EBS snapshot.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_copy_snapshot_:_DestinationOutpostArn">DestinationOutpostArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Outpost to which to copy
the snapshot. Only specify this parameter when copying a snapshot from
an Amazon Web Services Region to an Outpost. The snapshot must be in the
Region for the destination Outpost. You cannot copy a snapshot from an
Outpost to a Region, from one Outpost to another, or within the same
Outpost.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#copy-snapshots">Copy
snapshots from an Amazon Web Services Region to an Outpost</a> in the
<em>Amazon Elastic Compute Cloud User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_copy_snapshot_:_DestinationRegion">DestinationRegion</code></td>
<td><p>The destination Region to use in the <code>PresignedUrl</code>
parameter of a snapshot copy operation. This parameter is only valid for
specifying the destination Region in a <code>PresignedUrl</code>
parameter, where it is required.</p>
<p>The snapshot copy is sent to the regional endpoint that you sent the
HTTP request to (for example, <code
style="white-space: pre;">⁠ec2.us-east-1.amazonaws.com⁠</code>). With the
CLI, this is specified using the <code>--region</code> parameter or the
default Region in your Amazon Web Services configuration file.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_copy_snapshot_:_Encrypted">Encrypted</code></td>
<td><p>To encrypt a copy of an unencrypted snapshot if encryption by
default is not enabled, enable encryption using this parameter.
Otherwise, omit this parameter. Encrypted snapshots are encrypted, even
if you omit this parameter and encryption by default is not enabled. You
cannot set this parameter to false. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon
EBS encryption</a> in the <em>Amazon Elastic Compute Cloud User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_copy_snapshot_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The identifier of the Key Management Service (KMS) KMS key to use
for Amazon EBS encryption. If this parameter is not specified, your KMS
key for Amazon EBS is used. If <code>KmsKeyId</code> is specified, the
encrypted state must be <code>true</code>.</p>
<p>You can specify the KMS key using any of the following:</p>
<ul>
<li><p>Key ID. For example,
1234abcd-12ab-34cd-56ef-1234567890ab.</p></li>
<li><p>Key alias. For example, alias/ExampleAlias.</p></li>
<li><p>Key ARN. For example,
arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.</p></li>
<li><p>Alias ARN. For example,
arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.</p></li>
</ul>
<p>Amazon Web Services authenticates the KMS key asynchronously.
Therefore, if you specify an ID, alias, or ARN that is not valid, the
action can appear to complete, but eventually fails.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_copy_snapshot_:_PresignedUrl">PresignedUrl</code></td>
<td><p>When you copy an encrypted source snapshot using the Amazon EC2
Query API, you must supply a pre-signed URL. This parameter is optional
for unencrypted snapshots. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html">Query
requests</a>.</p>
<p>The <code>PresignedUrl</code> should use the snapshot source
endpoint, the <code>copy_snapshot</code> action, and include the
<code>SourceRegion</code>, <code>SourceSnapshotId</code>, and
<code>DestinationRegion</code> parameters. The <code>PresignedUrl</code>
must be signed using Amazon Web Services Signature Version 4. Because
EBS snapshots are stored in Amazon S3, the signing algorithm for this
parameter uses the same logic that is described in <a
href="https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html">Authenticating
Requests: Using Query Parameters (Amazon Web Services Signature Version
4)</a> in the <em>Amazon Simple Storage Service API Reference</em>. An
invalid or improperly signed <code>PresignedUrl</code> will cause the
copy operation to fail asynchronously, and the snapshot will move to an
<code>error</code> state.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_copy_snapshot_:_SourceRegion">SourceRegion</code></td>
<td><p>[required] The ID of the Region that contains the snapshot to be
copied.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_copy_snapshot_:_SourceSnapshotId">SourceSnapshotId</code></td>
<td><p>[required] The ID of the EBS snapshot to copy.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_copy_snapshot_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the new snapshot.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_copy_snapshot_:_DryRun">DryRun</code></td>
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
      SnapshotId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$copy_snapshot(
      Description = "string",
      DestinationOutpostArn = "string",
      DestinationRegion = "string",
      Encrypted = TRUE|FALSE,
      KmsKeyId = "string",
      PresignedUrl = "string",
      SourceRegion = "string",
      SourceSnapshotId = "string",
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
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example copies a snapshot with the snapshot ID of
    # `snap-066877671789bd71b` from the `us-west-2` region to the
    # `us-east-1` region and adds a short description to identify the
    # snapshot.
    svc$copy_snapshot(
      Description = "This is my copied snapshot.",
      DestinationRegion = "us-east-1",
      SourceRegion = "us-west-2",
      SourceSnapshotId = "snap-066877671789bd71b"
    )

    ## End(Not run)
