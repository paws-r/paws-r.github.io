<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_retrieve_environment_info</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the compiled information from a RequestEnvironmentInfo request

### Description

Retrieves the compiled information from a `request_environment_info`
request.

Related Topics

-   `request_environment_info`

### Usage

    elasticbeanstalk_retrieve_environment_info(EnvironmentId,
      EnvironmentName, InfoType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_retrieve_environment_info_:_EnvironmentId">EnvironmentId</code></td>
<td><p>The ID of the data's environment.</p>
<p>If no such environment is found, returns an
<code>InvalidParameterValue</code> error.</p>
<p>Condition: You must specify either this or an EnvironmentName, or
both. If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_retrieve_environment_info_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the data's environment.</p>
<p>If no such environment is found, returns an
<code>InvalidParameterValue</code> error.</p>
<p>Condition: You must specify either this or an EnvironmentId, or both.
If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_retrieve_environment_info_:_InfoType">InfoType</code></td>
<td><p>[required] The type of information to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EnvironmentInfo = list(
        list(
          InfoType = "tail"|"bundle",
          Ec2InstanceId = "string",
          SampleTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          Message = "string"
        )
      )
    )

### Request syntax

    svc$retrieve_environment_info(
      EnvironmentId = "string",
      EnvironmentName = "string",
      InfoType = "tail"|"bundle"
    )

### Examples

    ## Not run: 
    # The following operation retrieves a link to logs from an environment
    # named my-env:
    svc$retrieve_environment_info(
      EnvironmentName = "my-env",
      InfoType = "tail"
    )

    ## End(Not run)
