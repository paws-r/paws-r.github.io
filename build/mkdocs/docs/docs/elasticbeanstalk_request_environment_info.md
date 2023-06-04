<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_request_environment_info</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates a request to compile the specified type of information of the deployed environment

### Description

Initiates a request to compile the specified type of information of the
deployed environment.

Setting the `InfoType` to `tail` compiles the last lines from the
application server log files of every Amazon EC2 instance in your
environment.

Setting the `InfoType` to `bundle` compresses the application server log
files for every Amazon EC2 instance into a `.zip` file. Legacy and .NET
containers do not support bundle logs.

Use `retrieve_environment_info` to obtain the set of logs.

Related Topics

-   `retrieve_environment_info`

### Usage

    elasticbeanstalk_request_environment_info(EnvironmentId,
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
id="elasticbeanstalk_request_environment_info_:_EnvironmentId">EnvironmentId</code></td>
<td><p>The ID of the environment of the requested data.</p>
<p>If no such environment is found,
<code>request_environment_info</code> returns an
<code>InvalidParameterValue</code> error.</p>
<p>Condition: You must specify either this or an EnvironmentName, or
both. If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_request_environment_info_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the environment of the requested data.</p>
<p>If no such environment is found,
<code>request_environment_info</code> returns an
<code>InvalidParameterValue</code> error.</p>
<p>Condition: You must specify either this or an EnvironmentId, or both.
If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_request_environment_info_:_InfoType">InfoType</code></td>
<td><p>[required] The type of information to request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$request_environment_info(
      EnvironmentId = "string",
      EnvironmentName = "string",
      InfoType = "tail"|"bundle"
    )

### Examples

    ## Not run: 
    # The following operation requests logs from an environment named my-env:
    svc$request_environment_info(
      EnvironmentName = "my-env",
      InfoType = "tail"
    )

    ## End(Not run)
