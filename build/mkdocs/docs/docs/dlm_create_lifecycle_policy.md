<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dlm_create_lifecycle_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a policy to manage the lifecycle of the specified Amazon Web Services resources

### Description

Creates a policy to manage the lifecycle of the specified Amazon Web
Services resources. You can create up to 100 lifecycle policies.

### Usage

    dlm_create_lifecycle_policy(ExecutionRoleArn, Description, State,
      PolicyDetails, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dlm_create_lifecycle_policy_:_ExecutionRoleArn">ExecutionRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role used to
run the operations specified by the lifecycle policy.</p></td>
</tr>
<tr class="even">
<td><code
id="dlm_create_lifecycle_policy_:_Description">Description</code></td>
<td><p>[required] A description of the lifecycle policy. The characters
^[0-9A-Za-z _-]+$ are supported.</p></td>
</tr>
<tr class="odd">
<td><code id="dlm_create_lifecycle_policy_:_State">State</code></td>
<td><p>[required] The desired activation state of the lifecycle policy
after creation.</p></td>
</tr>
<tr class="even">
<td><code
id="dlm_create_lifecycle_policy_:_PolicyDetails">PolicyDetails</code></td>
<td><p>[required] The configuration details of the lifecycle
policy.</p></td>
</tr>
<tr class="odd">
<td><code id="dlm_create_lifecycle_policy_:_Tags">Tags</code></td>
<td><p>The tags to apply to the lifecycle policy during
creation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyId = "string"
    )

### Request syntax

    svc$create_lifecycle_policy(
      ExecutionRoleArn = "string",
      Description = "string",
      State = "ENABLED"|"DISABLED",
      PolicyDetails = list(
        PolicyType = "EBS_SNAPSHOT_MANAGEMENT"|"IMAGE_MANAGEMENT"|"EVENT_BASED_POLICY",
        ResourceTypes = list(
          "VOLUME"|"INSTANCE"
        ),
        ResourceLocations = list(
          "CLOUD"|"OUTPOST"
        ),
        TargetTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        Schedules = list(
          list(
            Name = "string",
            CopyTags = TRUE|FALSE,
            TagsToAdd = list(
              list(
                Key = "string",
                Value = "string"
              )
            ),
            VariableTags = list(
              list(
                Key = "string",
                Value = "string"
              )
            ),
            CreateRule = list(
              Location = "CLOUD"|"OUTPOST_LOCAL",
              Interval = 123,
              IntervalUnit = "HOURS",
              Times = list(
                "string"
              ),
              CronExpression = "string"
            ),
            RetainRule = list(
              Count = 123,
              Interval = 123,
              IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
            ),
            FastRestoreRule = list(
              Count = 123,
              Interval = 123,
              IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS",
              AvailabilityZones = list(
                "string"
              )
            ),
            CrossRegionCopyRules = list(
              list(
                TargetRegion = "string",
                Target = "string",
                Encrypted = TRUE|FALSE,
                CmkArn = "string",
                CopyTags = TRUE|FALSE,
                RetainRule = list(
                  Interval = 123,
                  IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
                ),
                DeprecateRule = list(
                  Interval = 123,
                  IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
                )
              )
            ),
            ShareRules = list(
              list(
                TargetAccounts = list(
                  "string"
                ),
                UnshareInterval = 123,
                UnshareIntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
              )
            ),
            DeprecateRule = list(
              Count = 123,
              Interval = 123,
              IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
            ),
            ArchiveRule = list(
              RetainRule = list(
                RetentionArchiveTier = list(
                  Count = 123,
                  Interval = 123,
                  IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
                )
              )
            )
          )
        ),
        Parameters = list(
          ExcludeBootVolume = TRUE|FALSE,
          NoReboot = TRUE|FALSE,
          ExcludeDataVolumeTags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        ),
        EventSource = list(
          Type = "MANAGED_CWE",
          Parameters = list(
            EventType = "shareSnapshot",
            SnapshotOwner = list(
              "string"
            ),
            DescriptionRegex = "string"
          )
        ),
        Actions = list(
          list(
            Name = "string",
            CrossRegionCopy = list(
              list(
                Target = "string",
                EncryptionConfiguration = list(
                  Encrypted = TRUE|FALSE,
                  CmkArn = "string"
                ),
                RetainRule = list(
                  Interval = 123,
                  IntervalUnit = "DAYS"|"WEEKS"|"MONTHS"|"YEARS"
                )
              )
            )
          )
        )
      ),
      Tags = list(
        "string"
      )
    )
