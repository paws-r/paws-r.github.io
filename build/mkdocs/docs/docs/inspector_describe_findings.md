<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_describe_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the findings that are specified by the ARNs of the findings

### Description

Describes the findings that are specified by the ARNs of the findings.

### Usage

    inspector_describe_findings(findingArns, locale)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_describe_findings_:_findingArns">findingArns</code></td>
<td><p>[required] The ARN that specifies the finding that you want to
describe.</p></td>
</tr>
<tr class="even">
<td><code id="inspector_describe_findings_:_locale">locale</code></td>
<td><p>The locale into which you want to translate a finding
description, recommendation, and the short description that identifies
the finding.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      findings = list(
        list(
          arn = "string",
          schemaVersion = 123,
          service = "string",
          serviceAttributes = list(
            schemaVersion = 123,
            assessmentRunArn = "string",
            rulesPackageArn = "string"
          ),
          assetType = "ec2-instance",
          assetAttributes = list(
            schemaVersion = 123,
            agentId = "string",
            autoScalingGroup = "string",
            amiId = "string",
            hostname = "string",
            ipv4Addresses = list(
              "string"
            ),
            tags = list(
              list(
                key = "string",
                value = "string"
              )
            ),
            networkInterfaces = list(
              list(
                networkInterfaceId = "string",
                subnetId = "string",
                vpcId = "string",
                privateDnsName = "string",
                privateIpAddress = "string",
                privateIpAddresses = list(
                  list(
                    privateDnsName = "string",
                    privateIpAddress = "string"
                  )
                ),
                publicDnsName = "string",
                publicIp = "string",
                ipv6Addresses = list(
                  "string"
                ),
                securityGroups = list(
                  list(
                    groupName = "string",
                    groupId = "string"
                  )
                )
              )
            )
          ),
          id = "string",
          title = "string",
          description = "string",
          recommendation = "string",
          severity = "Low"|"Medium"|"High"|"Informational"|"Undefined",
          numericSeverity = 123.0,
          confidence = 123,
          indicatorOfCompromise = TRUE|FALSE,
          attributes = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          userAttributes = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          updatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      failedItems = list(
        list(
          failureCode = "INVALID_ARN"|"DUPLICATE_ARN"|"ITEM_DOES_NOT_EXIST"|"ACCESS_DENIED"|"LIMIT_EXCEEDED"|"INTERNAL_ERROR",
          retryable = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_findings(
      findingArns = list(
        "string"
      ),
      locale = "EN_US"
    )

### Examples

    ## Not run: 
    # Describes the findings that are specified by the ARNs of the findings.
    svc$describe_findings(
      findingArns = list(
        "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-..."
      )
    )

    ## End(Not run)
