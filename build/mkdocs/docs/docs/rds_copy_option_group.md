<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_copy_option_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies the specified option group

### Description

Copies the specified option group.

### Usage

    rds_copy_option_group(SourceOptionGroupIdentifier,
      TargetOptionGroupIdentifier, TargetOptionGroupDescription, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_copy_option_group_:_SourceOptionGroupIdentifier">SourceOptionGroupIdentifier</code></td>
<td><p>[required] The identifier for the source option group.</p>
<p>Constraints:</p>
<ul>
<li><p>Must specify a valid option group.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_copy_option_group_:_TargetOptionGroupIdentifier">TargetOptionGroupIdentifier</code></td>
<td><p>[required] The identifier for the copied option group.</p>
<p>Constraints:</p>
<ul>
<li><p>Can't be null, empty, or blank</p></li>
<li><p>Must contain from 1 to 255 letters, numbers, or hyphens</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
</ul>
<p>Example: <code>my-option-group</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_copy_option_group_:_TargetOptionGroupDescription">TargetOptionGroupDescription</code></td>
<td><p>[required] The description for the copied option group.</p></td>
</tr>
<tr class="even">
<td><code id="rds_copy_option_group_:_Tags">Tags</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OptionGroup = list(
        OptionGroupName = "string",
        OptionGroupDescription = "string",
        EngineName = "string",
        MajorEngineVersion = "string",
        Options = list(
          list(
            OptionName = "string",
            OptionDescription = "string",
            Persistent = TRUE|FALSE,
            Permanent = TRUE|FALSE,
            Port = 123,
            OptionVersion = "string",
            OptionSettings = list(
              list(
                Name = "string",
                Value = "string",
                DefaultValue = "string",
                Description = "string",
                ApplyType = "string",
                DataType = "string",
                AllowedValues = "string",
                IsModifiable = TRUE|FALSE,
                IsCollection = TRUE|FALSE
              )
            ),
            DBSecurityGroupMemberships = list(
              list(
                DBSecurityGroupName = "string",
                Status = "string"
              )
            ),
            VpcSecurityGroupMemberships = list(
              list(
                VpcSecurityGroupId = "string",
                Status = "string"
              )
            )
          )
        ),
        AllowsVpcAndNonVpcInstanceMemberships = TRUE|FALSE,
        VpcId = "string",
        OptionGroupArn = "string",
        SourceOptionGroup = "string",
        SourceAccountId = "string",
        CopyTimestamp = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$copy_option_group(
      SourceOptionGroupIdentifier = "string",
      TargetOptionGroupIdentifier = "string",
      TargetOptionGroupDescription = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
