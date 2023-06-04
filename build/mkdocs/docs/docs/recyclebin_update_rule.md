<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>recyclebin_update_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing Recycle Bin retention rule

### Description

Updates an existing Recycle Bin retention rule. You can update a
retention rule's description, resource tags, and retention period at any
time after creation. You can't update a retention rule's resource type
after creation. For more information, see [Update Recycle Bin retention
rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-update-rule)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    recyclebin_update_rule(Identifier, RetentionPeriod, Description,
      ResourceType, ResourceTags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="recyclebin_update_rule_:_Identifier">Identifier</code></td>
<td><p>[required] The unique ID of the retention rule.</p></td>
</tr>
<tr class="even">
<td><code
id="recyclebin_update_rule_:_RetentionPeriod">RetentionPeriod</code></td>
<td><p>Information about the retention period for which the retention
rule is to retain resources.</p></td>
</tr>
<tr class="odd">
<td><code
id="recyclebin_update_rule_:_Description">Description</code></td>
<td><p>The retention rule description.</p></td>
</tr>
<tr class="even">
<td><code
id="recyclebin_update_rule_:_ResourceType">ResourceType</code></td>
<td><p>This parameter is currently not supported. You can't update a
retention rule's resource type after creation.</p></td>
</tr>
<tr class="odd">
<td><code
id="recyclebin_update_rule_:_ResourceTags">ResourceTags</code></td>
<td><p>Specifies the resource tags to use to identify resources that are
to be retained by a tag-level retention rule. For tag-level retention
rules, only deleted resources, of the specified resource type, that have
one or more of the specified tag key and value pairs are retained. If a
resource is deleted, but it does not have any of the specified tag key
and value pairs, it is immediately deleted without being retained by the
retention rule.</p>
<p>You can add the same tag key and value pair to a maximum or five
retention rules.</p>
<p>To create a Region-level retention rule, omit this parameter. A
Region-level retention rule does not have any resource tags specified.
It retains all deleted resources of the specified resource type in the
Region in which the rule is created, even if the resources are not
tagged.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Identifier = "string",
      RetentionPeriod = list(
        RetentionPeriodValue = 123,
        RetentionPeriodUnit = "DAYS"
      ),
      Description = "string",
      ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
      ResourceTags = list(
        list(
          ResourceTagKey = "string",
          ResourceTagValue = "string"
        )
      ),
      Status = "pending"|"available",
      LockState = "locked"|"pending_unlock"|"unlocked",
      LockEndTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_rule(
      Identifier = "string",
      RetentionPeriod = list(
        RetentionPeriodValue = 123,
        RetentionPeriodUnit = "DAYS"
      ),
      Description = "string",
      ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
      ResourceTags = list(
        list(
          ResourceTagKey = "string",
          ResourceTagValue = "string"
        )
      )
    )
