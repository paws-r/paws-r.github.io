<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_delete_principal_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a group so that all users and sub groups that belong to the group can no longer access documents only available to that group

### Description

Deletes a group so that all users and sub groups that belong to the
group can no longer access documents only available to that group.

For example, after deleting the group "Summer Interns", all interns who
belonged to that group no longer see intern-only documents in their
search results.

If you want to delete or replace users or sub groups of a group, you
need to use the `put_principal_mapping` operation. For example, if a
user in the group "Engineering" leaves the engineering team and another
user takes their place, you provide an updated list of users or sub
groups that belong to the "Engineering" group when calling
`put_principal_mapping`. You can update your internal list of users or
sub groups and input this list when calling `put_principal_mapping`.

`delete_principal_mapping` is currently not supported in the Amazon Web
Services GovCloud (US-West) region.

### Usage

    kendra_delete_principal_mapping(IndexId, DataSourceId, GroupId,
      OrderingId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_delete_principal_mapping_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index you want to delete a group
from.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_delete_principal_mapping_:_DataSourceId">DataSourceId</code></td>
<td><p>The identifier of the data source you want to delete a group
from.</p>
<p>A group can be tied to multiple data sources. You can delete a group
from accessing documents in a certain data source. For example, the
groups "Research", "Engineering", and "Sales and Marketing" are all tied
to the company's documents stored in the data sources Confluence and
Salesforce. You want to delete "Research" and "Engineering" groups from
Salesforce, so that these groups cannot access customer-related
documents stored in Salesforce. Only "Sales and Marketing" should access
documents in the Salesforce data source.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_delete_principal_mapping_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier of the group you want to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_delete_principal_mapping_:_OrderingId">OrderingId</code></td>
<td><p>The timestamp identifier you specify to ensure Amazon Kendra does
not override the latest <code>DELETE</code> action with previous
actions. The highest number ID, which is the ordering ID, is the latest
action you want to process and apply on top of other actions with lower
number IDs. This prevents previous actions with lower number IDs from
possibly overriding the latest action.</p>
<p>The ordering ID can be the Unix time of the last update you made to a
group members list. You would then provide this list when calling
<code>put_principal_mapping</code>. This ensures your
<code>DELETE</code> action for that updated group with the latest
members list doesn't get overwritten by earlier <code>DELETE</code>
actions for the same group which are yet to be processed.</p>
<p>The default ordering ID is the current Unix time in milliseconds that
the action was received by Amazon Kendra.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_principal_mapping(
      IndexId = "string",
      DataSourceId = "string",
      GroupId = "string",
      OrderingId = 123
    )
