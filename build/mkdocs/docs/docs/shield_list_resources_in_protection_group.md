<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_list_resources_in_protection_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the resources that are included in the protection group

### Description

Retrieves the resources that are included in the protection group.

### Usage

    shield_list_resources_in_protection_group(ProtectionGroupId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_list_resources_in_protection_group_:_ProtectionGroupId">ProtectionGroupId</code></td>
<td><p>[required] The name of the protection group. You use this to
identify the protection group in lists and to manage the protection
group, for example to update, delete, or describe it.</p></td>
</tr>
<tr class="even">
<td><code
id="shield_list_resources_in_protection_group_:_NextToken">NextToken</code></td>
<td><p>When you request a list of objects from Shield Advanced, if the
response does not include all of the remaining available objects, Shield
Advanced includes a <code>NextToken</code> value in the response. You
can retrieve the next batch of objects by requesting the list again and
providing the token that was returned by the prior call in your
request.</p>
<p>You can indicate the maximum number of objects that you want Shield
Advanced to return for a single call with the <code>MaxResults</code>
setting. Shield Advanced will not return more than
<code>MaxResults</code> objects, but may return fewer, even if more
objects are still available.</p>
<p>Whenever more objects remain that Shield Advanced has not yet
returned to you, the response will include a <code>NextToken</code>
value.</p>
<p>On your first call to a list operation, leave this setting
empty.</p></td>
</tr>
<tr class="odd">
<td><code
id="shield_list_resources_in_protection_group_:_MaxResults">MaxResults</code></td>
<td><p>The greatest number of objects that you want Shield Advanced to
return to the list request. Shield Advanced might return fewer objects
than you indicate in this setting, even if more objects are available.
If there are more objects remaining, Shield Advanced will always also
return a <code>NextToken</code> value in the response.</p>
<p>The default setting is 20.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceArns = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_resources_in_protection_group(
      ProtectionGroupId = "string",
      NextToken = "string",
      MaxResults = 123
    )
