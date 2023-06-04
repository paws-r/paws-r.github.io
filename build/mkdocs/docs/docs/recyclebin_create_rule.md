<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>recyclebin_create_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Recycle Bin retention rule

### Description

Creates a Recycle Bin retention rule. For more information, see [Create
Recycle Bin retention
rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-create-rule)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    recyclebin_create_rule(RetentionPeriod, Description, Tags, ResourceType,
      ResourceTags, LockConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="recyclebin_create_rule_:_RetentionPeriod">RetentionPeriod</code></td>
<td><p>[required] Information about the retention period for which the
retention rule is to retain resources.</p></td>
</tr>
<tr class="even">
<td><code
id="recyclebin_create_rule_:_Description">Description</code></td>
<td><p>The retention rule description.</p></td>
</tr>
<tr class="odd">
<td><code id="recyclebin_create_rule_:_Tags">Tags</code></td>
<td><p>Information about the tags to assign to the retention
rule.</p></td>
</tr>
<tr class="even">
<td><code
id="recyclebin_create_rule_:_ResourceType">ResourceType</code></td>
<td><p>[required] The resource type to be retained by the retention
rule. Currently, only Amazon EBS snapshots and EBS-backed AMIs are
supported. To retain snapshots, specify <code>EBS_SNAPSHOT</code>. To
retain EBS-backed AMIs, specify <code>EC2_IMAGE</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="recyclebin_create_rule_:_ResourceTags">ResourceTags</code></td>
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
<tr class="even">
<td><code
id="recyclebin_create_rule_:_LockConfiguration">LockConfiguration</code></td>
<td><p>Information about the retention rule lock configuration.</p></td>
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
      ResourceTags = list(
        list(
          ResourceTagKey = "string",
          ResourceTagValue = "string"
        )
      ),
      Status = "pending"|"available",
      LockConfiguration = list(
        UnlockDelay = list(
          UnlockDelayValue = 123,
          UnlockDelayUnit = "DAYS"
        )
      ),
      LockState = "locked"|"pending_unlock"|"unlocked"
    )

### Request syntax

    svc$create_rule(
      RetentionPeriod = list(
        RetentionPeriodValue = 123,
        RetentionPeriodUnit = "DAYS"
      ),
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
      ResourceTags = list(
        list(
          ResourceTagKey = "string",
          ResourceTagValue = "string"
        )
      ),
      LockConfiguration = list(
        UnlockDelay = list(
          UnlockDelayValue = 123,
          UnlockDelayUnit = "DAYS"
        )
      )
    )
