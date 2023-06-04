<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dlm_update_lifecycle_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified lifecycle policy

### Description

Updates the specified lifecycle policy.

For more information about updating a policy, see [Modify lifecycle
policies](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#modify).

### Usage

    dlm_update_lifecycle_policy(PolicyId, ExecutionRoleArn, State,
      Description, PolicyDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dlm_update_lifecycle_policy_:_PolicyId">PolicyId</code></td>
<td><p>[required] The identifier of the lifecycle policy.</p></td>
</tr>
<tr class="even">
<td><code
id="dlm_update_lifecycle_policy_:_ExecutionRoleArn">ExecutionRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role used to run the
operations specified by the lifecycle policy.</p></td>
</tr>
<tr class="odd">
<td><code id="dlm_update_lifecycle_policy_:_State">State</code></td>
<td><p>The desired activation state of the lifecycle policy after
creation.</p></td>
</tr>
<tr class="even">
<td><code
id="dlm_update_lifecycle_policy_:_Description">Description</code></td>
<td><p>A description of the lifecycle policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="dlm_update_lifecycle_policy_:_PolicyDetails">PolicyDetails</code></td>
<td><p>The configuration of the lifecycle policy. You cannot update the
policy type or the resource type.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_lifecycle_policy(
      PolicyId = "string",
      ExecutionRoleArn = "string",
      State = "ENABLED"|"DISABLED",
      Description = "string",
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
      )
    )
