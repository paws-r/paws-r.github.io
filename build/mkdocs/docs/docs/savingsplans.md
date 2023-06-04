<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>savingsplans</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Savings Plans

### Description

Savings Plans are a pricing model that offer significant savings on AWS
usage (for example, on Amazon EC2 instances). You commit to a consistent
amount of usage, in USD per hour, for a term of 1 or 3 years, and
receive a lower price for that usage. For more information, see the [AWS
Savings Plans User
Guide](https://docs.aws.amazon.com/savingsplans/latest/userguide/).

### Usage

    savingsplans(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="savingsplans_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- savingsplans(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../savingsplans_create_savings_plan/"> create_savings_plan </a></td>
<td style="text-align: left;">Creates a Savings Plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../savingsplans_delete_queued_savings_plan/"> delete_queued_savings_plan </a></td>
<td style="text-align: left;">Deletes the queued purchase for the
specified Savings Plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../savingsplans_describe_savings_plan_rates/"> describe_savings_plan_rates </a></td>
<td style="text-align: left;">Describes the specified Savings Plans
rates</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../savingsplans_describe_savings_plans/"> describe_savings_plans </a></td>
<td style="text-align: left;">Describes the specified Savings Plans</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../savingsplans_describe_savings_plans_offering_rates/"> describe_savings_plans_offering_rates </a></td>
<td style="text-align: left;">Describes the specified Savings Plans
offering rates</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../savingsplans_describe_savings_plans_offerings/"> describe_savings_plans_offerings </a></td>
<td style="text-align: left;">Describes the specified Savings Plans
offerings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../savingsplans_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags for the specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../savingsplans_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds the specified tags to the specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../savingsplans_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the specified tags from the
specified resource</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- savingsplans()
    svc$create_savings_plan(
      Foo = 123
    )

    ## End(Not run)
