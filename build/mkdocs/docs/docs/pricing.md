<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pricing</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Price List Service

### Description

Amazon Web Services Price List API is a centralized and convenient way
to programmatically query Amazon Web Services for services, products,
and pricing information. The Amazon Web Services Price List uses
standardized product attributes such as `Location`, `⁠Storage Class⁠`, and
`⁠Operating System⁠`, and provides prices at the SKU level. You can use
the Amazon Web Services Price List to build cost control and scenario
planning tools, reconcile billing data, forecast future spend for
budgeting purposes, and provide cost benefit analysis that compare your
internal workloads with Amazon Web Services.

Use `GetServices` without a service code to retrieve the service codes
for all AWS services, then `GetServices` with a service code to retrieve
the attribute names for that service. After you have the service code
and attribute names, you can use `get_attribute_values` to see what
values are available for an attribute. With the service code and an
attribute name and value, you can use `get_products` to find specific
products that you're interested in, such as an `AmazonEC2` instance,
with a `⁠Provisioned IOPS⁠` `volumeType`.

Service Endpoint

Amazon Web Services Price List service API provides the following two
endpoints:

-   https://api.pricing.us-east-1.amazonaws.com

-   https://api.pricing.ap-south-1.amazonaws.com

### Usage

    pricing(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="pricing_:_config">config</code></td>
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

    svc <- pricing(
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
<td style="text-align: left;"><a href="../pricing_describe_services/"> describe_services </a></td>
<td style="text-align: left;">Returns the metadata for one service or a
list of the metadata for all services</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pricing_get_attribute_values/"> get_attribute_values </a></td>
<td style="text-align: left;">Returns a list of attribute values</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pricing_get_price_list_file_url/"> get_price_list_file_url </a></td>
<td style="text-align: left;">This feature is in preview release and is
subject to change</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pricing_get_products/"> get_products </a></td>
<td style="text-align: left;">Returns a list of all products that match
the filter criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pricing_list_price_lists/"> list_price_lists </a></td>
<td style="text-align: left;">This feature is in preview release and is
subject to change</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- pricing()
    # Retrieves the service for the given Service Code.
    svc$describe_services(
      FormatVersion = "aws_v1",
      MaxResults = 1L,
      ServiceCode = "AmazonEC2"
    )

    ## End(Not run)
