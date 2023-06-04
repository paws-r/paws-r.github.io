<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dlm_get_lifecycle_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets detailed information about the specified lifecycle policy

### Description

Gets detailed information about the specified lifecycle policy.

### Usage

    dlm_get_lifecycle_policy(PolicyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dlm_get_lifecycle_policy_:_PolicyId">PolicyId</code></td>
<td><p>[required] The identifier of the lifecycle policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = list(
        PolicyId = "string",
        Description = "string",
        State = "ENABLED"|"DISABLED"|"ERROR",
        StatusMessage = "string",
        ExecutionRoleArn = "string",
        DateCreated = as.POSIXct(
          "2015-01-01"
        ),
        DateModified = as.POSIXct(
          "2015-01-01"
        ),
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
        ),
        PolicyArn = "string"
      )
    )

### Request syntax

    svc$get_lifecycle_policy(
      PolicyId = "string"
    )
