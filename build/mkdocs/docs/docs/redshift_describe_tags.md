<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of tags

### Description

Returns a list of tags. You can return tags from a specific resource by
specifying an ARN, or you can return all tags for a given type of
resource, such as clusters, snapshots, and so on.

The following are limitations for `describe_tags`:

-   You cannot specify an ARN and a resource-type value together in the
    same request.

-   You cannot use the `MaxRecords` and `Marker` parameters together
    with the ARN parameter.

-   The `MaxRecords` parameter can be a range from 10 to 50 results to
    return in a request.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all resources that match any combination of the
specified keys and values. For example, if you have `owner` and
`environment` for tag keys, and `admin` and `test` for tag values, all
resources that have any combination of those values are returned.

If both tag keys and values are omitted from the request, resources are
returned regardless of whether they have tag keys or values associated
with them.

### Usage

    redshift_describe_tags(ResourceName, ResourceType, MaxRecords, Marker,
      TagKeys, TagValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_tags_:_ResourceName">ResourceName</code></td>
<td><p>The Amazon Resource Name (ARN) for which you want to describe the
tag or tags. For example,
<code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_tags_:_ResourceType">ResourceType</code></td>
<td><p>The type of resource with which you want to view tags. Valid
resource types are:</p>
<ul>
<li><p>Cluster</p></li>
<li><p>CIDR/IP</p></li>
<li><p>EC2 security group</p></li>
<li><p>Snapshot</p></li>
<li><p>Cluster security group</p></li>
<li><p>Subnet group</p></li>
<li><p>HSM connection</p></li>
<li><p>HSM certificate</p></li>
<li><p>Parameter group</p></li>
<li><p>Snapshot copy grant</p></li>
</ul>
<p>For more information about Amazon Redshift resource types and
constructing ARNs, go to <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions">Specifying
Policy Elements: Actions, Effects, Resources, and Principals</a> in the
Amazon Redshift Cluster Management Guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_tags_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number or response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned <code>marker</code>
value.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_describe_tags_:_Marker">Marker</code></td>
<td><p>A value that indicates the starting point for the next set of
response records in a subsequent request. If a value is returned in a
response, you can retrieve the next set of records by providing this
returned marker value in the <code>marker</code> parameter and retrying
the command. If the <code>marker</code> field is empty, all response
records have been retrieved for the request.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_describe_tags_:_TagKeys">TagKeys</code></td>
<td><p>A tag key or keys for which you want to return all matching
resources that are associated with the specified key or keys. For
example, suppose that you have resources tagged with keys called
<code>owner</code> and <code>environment</code>. If you specify both of
these tag keys in the request, Amazon Redshift returns a response with
all resources that have either or both of these tag keys associated with
them.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_describe_tags_:_TagValues">TagValues</code></td>
<td><p>A tag value or values for which you want to return all matching
resources that are associated with the specified value or values. For
example, suppose that you have resources tagged with values called
<code>admin</code> and <code>test</code>. If you specify both of these
tag values in the request, Amazon Redshift returns a response with all
resources that have either or both of these tag values associated with
them.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TaggedResources = list(
        list(
          Tag = list(
            Key = "string",
            Value = "string"
          ),
          ResourceName = "string",
          ResourceType = "string"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_tags(
      ResourceName = "string",
      ResourceType = "string",
      MaxRecords = 123,
      Marker = "string",
      TagKeys = list(
        "string"
      ),
      TagValues = list(
        "string"
      )
    )
