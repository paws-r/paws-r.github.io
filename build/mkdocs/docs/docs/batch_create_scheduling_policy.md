<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_create_scheduling_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Batch scheduling policy

### Description

Creates an Batch scheduling policy.

### Usage

    batch_create_scheduling_policy(name, fairsharePolicy, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="batch_create_scheduling_policy_:_name">name</code></td>
<td><p>[required] The name of the scheduling policy. It can be up to 128
letters long. It can contain uppercase and lowercase letters, numbers,
hyphens (-), and underscores (_).</p></td>
</tr>
<tr class="even">
<td><code
id="batch_create_scheduling_policy_:_fairsharePolicy">fairsharePolicy</code></td>
<td><p>The fair share policy of the scheduling policy.</p></td>
</tr>
<tr class="odd">
<td><code id="batch_create_scheduling_policy_:_tags">tags</code></td>
<td><p>The tags that you apply to the scheduling policy to help you
categorize and organize your resources. Each tag consists of a key and
an optional value. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a> in <em>Amazon Web Services General
Reference</em>.</p>
<p>These tags can be updated or removed using the
<code>tag_resource</code> and <code>untag_resource</code> API
operations.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      name = "string",
      arn = "string"
    )

### Request syntax

    svc$create_scheduling_policy(
      name = "string",
      fairsharePolicy = list(
        shareDecaySeconds = 123,
        computeReservation = 123,
        shareDistribution = list(
          list(
            shareIdentifier = "string",
            weightFactor = 123.0
          )
        )
      ),
      tags = list(
        "string"
      )
    )
