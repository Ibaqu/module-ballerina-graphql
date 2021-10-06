// Copyright (c) 2021, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

public class DirectiveNode {
    *Node;

    private string name;
    private Location location;
    private ArgumentNode[] argumentNodes;
    private DirectiveLocation[] directiveLocations;

    public isolated function init(string name, Location location) {
        self.name = name;
        self.location = location;
        self.argumentNodes = [];
        self.directiveLocations = [];
    }

    public isolated function getName() returns string {
        return self.name;
    }

    public isolated function getLocation() returns Location {
        return self.location;
    }

    public isolated function getArguments() returns ArgumentNode[] {
        return self.argumentNodes;
    }

    public isolated function addArgument(ArgumentNode arg) {
        self.argumentNodes.push(arg);
    }

    public isolated function getDirectiveLocations() returns DirectiveLocation[] {
        return self.directiveLocations;
    }

    public isolated function addDirectiveLocation(DirectiveLocation dirLocation) {
        self.directiveLocations.push(dirLocation);
    }
}
