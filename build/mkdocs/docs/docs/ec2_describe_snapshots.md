<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified EBS snapshots available to you or all of the EBS snapshots available to you

### Description

Describes the specified EBS snapshots available to you or all of the EBS
snapshots available to you.

The snapshots available to you include public snapshots, private
snapshots that you own, and private snapshots owned by other Amazon Web
Services accounts for which you have explicit create volume permissions.

The create volume permissions fall into the following categories:

-   *public*: The owner of the snapshot granted create volume
    permissions for the snapshot to the `all` group. All Amazon Web
    Services accounts have create volume permissions for these
    snapshots.

-   *explicit*: The owner of the snapshot granted create volume
    permissions to a specific Amazon Web Services account.

-   *implicit*: An Amazon Web Services account has implicit create
    volume permissions for all snapshots it owns.

The list of snapshots returned can be filtered by specifying snapshot
IDs, snapshot owners, or Amazon Web Services accounts with create volume
permissions. If no options are specified, Amazon EC2 returns all
snapshots for which you have create volume permissions.

If you specify one or more snapshot IDs, only snapshots that have the
specified IDs are returned. If you specify an invalid snapshot ID, an
error is returned. If you specify a snapshot ID for which you do not
have access, it is not included in the returned results.

If you specify one or more snapshot owners using the `OwnerIds` option,
only snapshots from the specified owners and for which you have access
are returned. The results can include the Amazon Web Services account
IDs of the specified owners, `amazon` for snapshots owned by Amazon, or
`self` for snapshots that you own.

If you specify a list of restorable users, only snapshots with create
snapshot permissions for those users are returned. You can specify
Amazon Web Services account IDs (if you own the snapshots), `self` for
snapshots for which you own or have explicit permissions, or `all` for
public snapshots.

If you are describing a long list of snapshots, we recommend that you
paginate the output to make the list more manageable. For more
information, see
[Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).

To get the state of fast snapshot restores for a snapshot, use
`describe_fast_snapshot_restores`.

For more information about EBS snapshots, see [Amazon EBS
snapshots](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_snapshots(Filters, MaxResults, NextToken, OwnerIds,
      RestorableByUserIds, SnapshotIds, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_snapshots_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>description</code> - A description of the
snapshot.</p></li>
<li><p><code>encrypted</code> - Indicates whether the snapshot is
encrypted (<code>true</code> | <code>false</code>)</p></li>
<li><p><code>owner-alias</code> - The owner alias, from an
Amazon-maintained list (<code>amazon</code>). This is not the
user-configured Amazon Web Services account alias set using the IAM
console. We recommend that you use the related parameter instead of this
filter.</p></li>
<li><p><code>owner-id</code> - The Amazon Web Services account ID of the
owner. We recommend that you use the related parameter instead of this
filter.</p></li>
<li><p><code>progress</code> - The progress of the snapshot, as a
percentage (for example, 80%).</p></li>
<li><p><code>snapshot-id</code> - The snapshot ID.</p></li>
<li><p><code>start-time</code> - The time stamp when the snapshot was
initiated.</p></li>
<li><p><code>status</code> - The status of the snapshot
(<code>pending</code> | <code>completed</code> |
<code>error</code>).</p></li>
<li><p><code>storage-tier</code> - The storage tier of the snapshot
(<code>archive</code> | <code>standard</code>).</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>volume-id</code> - The ID of the volume the snapshot is
for.</p></li>
<li><p><code>volume-size</code> - The size of the volume, in
GiB.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_snapshots_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of snapshots to return for this request. This
value can be between 5 and 1,000; if this value is larger than 1,000,
only 1,000 results are returned. If this parameter is not used, then the
request returns all snapshots. You cannot specify this parameter and the
snapshot IDs parameter in the same request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_snapshots_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_snapshots_:_OwnerIds">OwnerIds</code></td>
<td><p>Scopes the results to snapshots with the specified owners. You
can specify a combination of Amazon Web Services account IDs,
<code>self</code>, and <code>amazon</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_snapshots_:_RestorableByUserIds">RestorableByUserIds</code></td>
<td><p>The IDs of the Amazon Web Services accounts that can create
volumes from the snapshot.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_snapshots_:_SnapshotIds">SnapshotIds</code></td>
<td><p>The snapshot IDs.</p>
<p>Default: Describes the snapshots for which you have create volume
permissions.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_snapshots_:_DryRun">DryRun</code></td>
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
      Snapshots = list(
        list(
          DataEncryptionKeyId = "string",
          Description = "string",
          Encrypted = TRUE|FALSE,
          KmsKeyId = "string",
          OwnerId = "string",
          Progress = "string",
          SnapshotId = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          State = "pending"|"completed"|"error"|"recoverable"|"recovering",
          StateMessage = "string",
          VolumeId = "string",
          VolumeSize = 123,
          OwnerAlias = "string",
          OutpostArn = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          StorageTier = "archive"|"standard",
          RestoreExpiryTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_snapshots(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string",
      OwnerIds = list(
        "string"
      ),
      RestorableByUserIds = list(
        "string"
      ),
      SnapshotIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example describes a snapshot with the snapshot ID of
    # `snap-1234567890abcdef0`.
    svc$describe_snapshots(
      SnapshotIds = list(
        "snap-1234567890abcdef0"
      )
    )

    # This example describes all snapshots owned by the ID 012345678910 that
    # are in the `pending` status.
    svc$describe_snapshots(
      Filters = list(
        list(
          Name = "status",
          Values = list(
            "pending"
          )
        )
      ),
      OwnerIds = list(
        "012345678910"
      )
    )

    ## End(Not run)
