<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_put_principal_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Maps users to their groups so that you only need to provide the user ID when you issue the query

### Description

Maps users to their groups so that you only need to provide the user ID
when you issue the query.

You can also map sub groups to groups. For example, the group "Company
Intellectual Property Teams" includes sub groups "Research" and
"Engineering". These sub groups include their own list of users or
people who work in these teams. Only users who work in research and
engineering, and therefore belong in the intellectual property group,
can see top-secret company documents in their search results.

This is useful for user context filtering, where search results are
filtered based on the user or their group access to documents. For more
information, see [Filtering on user
context](https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html).

If more than five `PUT` actions for a group are currently processing, a
validation exception is thrown.

### Usage

    kendra_put_principal_mapping(IndexId, DataSourceId, GroupId,
      GroupMembers, OrderingId, RoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_put_principal_mapping_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index you want to map users to
their groups.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_put_principal_mapping_:_DataSourceId">DataSourceId</code></td>
<td><p>The identifier of the data source you want to map users to their
groups.</p>
<p>This is useful if a group is tied to multiple data sources, but you
only want the group to access documents of a certain data source. For
example, the groups "Research", "Engineering", and "Sales and Marketing"
are all tied to the company's documents stored in the data sources
Confluence and Salesforce. However, "Sales and Marketing" team only
needs access to customer-related documents stored in
Salesforce.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_put_principal_mapping_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier of the group you want to map its users
to.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_put_principal_mapping_:_GroupMembers">GroupMembers</code></td>
<td><p>[required] The list that contains your users or sub groups that
belong the same group.</p>
<p>For example, the group "Company" includes the user "CEO" and the sub
groups "Research", "Engineering", and "Sales and Marketing".</p>
<p>If you have more than 1000 users and/or sub groups for a single
group, you need to provide the path to the S3 file that lists your users
and sub groups for a group. Your sub groups can contain more than 1000
users, but the list of sub groups that belong to a group (and/or users)
must be no more than 1000.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_put_principal_mapping_:_OrderingId">OrderingId</code></td>
<td><p>The timestamp identifier you specify to ensure Amazon Kendra does
not override the latest <code>PUT</code> action with previous actions.
The highest number ID, which is the ordering ID, is the latest action
you want to process and apply on top of other actions with lower number
IDs. This prevents previous actions with lower number IDs from possibly
overriding the latest action.</p>
<p>The ordering ID can be the Unix time of the last update you made to a
group members list. You would then provide this list when calling
<code>put_principal_mapping</code>. This ensures your <code>PUT</code>
action for that updated group with the latest members list doesn't get
overwritten by earlier <code>PUT</code> actions for the same group which
are yet to be processed.</p>
<p>The default ordering ID is the current Unix time in milliseconds that
the action was received by Amazon Kendra.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_put_principal_mapping_:_RoleArn">RoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of a role that has access to the
S3 file that contains your list of users or sub groups that belong to a
group.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html#iam-roles-ds">IAM
roles for Amazon Kendra</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_principal_mapping(
      IndexId = "string",
      DataSourceId = "string",
      GroupId = "string",
      GroupMembers = list(
        MemberGroups = list(
          list(
            GroupId = "string",
            DataSourceId = "string"
          )
        ),
        MemberUsers = list(
          list(
            UserId = "string"
          )
        ),
        S3PathforGroupMembers = list(
          Bucket = "string",
          Key = "string"
        )
      ),
      OrderingId = 123,
      RoleArn = "string"
    )
