<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dlm_get_lifecycle_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets summary information about all or the specified data lifecycle policies

### Description

Gets summary information about all or the specified data lifecycle
policies.

To get complete information about a policy, use `get_lifecycle_policy`.

### Usage

    dlm_get_lifecycle_policies(PolicyIds, State, ResourceTypes, TargetTags,
      TagsToAdd)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dlm_get_lifecycle_policies_:_PolicyIds">PolicyIds</code></td>
<td><p>The identifiers of the data lifecycle policies.</p></td>
</tr>
<tr class="even">
<td><code id="dlm_get_lifecycle_policies_:_State">State</code></td>
<td><p>The activation state.</p></td>
</tr>
<tr class="odd">
<td><code
id="dlm_get_lifecycle_policies_:_ResourceTypes">ResourceTypes</code></td>
<td><p>The resource type.</p></td>
</tr>
<tr class="even">
<td><code
id="dlm_get_lifecycle_policies_:_TargetTags">TargetTags</code></td>
<td><p>The target tag for a policy.</p>
<p>Tags are strings in the format <code>key=value</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="dlm_get_lifecycle_policies_:_TagsToAdd">TagsToAdd</code></td>
<td><p>The tags to add to objects created by the policy.</p>
<p>Tags are strings in the format <code>key=value</code>.</p>
<p>These user-defined tags are added in addition to the Amazon Web
Services-added lifecycle tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policies = list(
        list(
          PolicyId = "string",
          Description = "string",
          State = "ENABLED"|"DISABLED"|"ERROR",
          Tags = list(
            "string"
          ),
          PolicyType = "EBS_SNAPSHOT_MANAGEMENT"|"IMAGE_MANAGEMENT"|"EVENT_BASED_POLICY"
        )
      )
    )

### Request syntax

    svc$get_lifecycle_policies(
      PolicyIds = list(
        "string"
      ),
      State = "ENABLED"|"DISABLED"|"ERROR",
      ResourceTypes = list(
        "VOLUME"|"INSTANCE"
      ),
      TargetTags = list(
        "string"
      ),
      TagsToAdd = list(
        "string"
      )
    )
