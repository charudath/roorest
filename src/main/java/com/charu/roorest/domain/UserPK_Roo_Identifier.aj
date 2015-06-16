// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.charu.roorest.domain;

import com.charu.roorest.domain.UserPK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect UserPK_Roo_Identifier {
    
    declare @type: UserPK: @Embeddable;
    
    @Column(name = "id", nullable = false)
    private Integer UserPK.id;
    
    @Column(name = "role_id", nullable = false)
    private Integer UserPK.roleId;
    
    @Column(name = "account_id", nullable = false)
    private Integer UserPK.accountId;
    
    public UserPK.new(Integer id, Integer roleId, Integer accountId) {
        super();
        this.id = id;
        this.roleId = roleId;
        this.accountId = accountId;
    }

    private UserPK.new() {
        super();
    }

    public Integer UserPK.getId() {
        return id;
    }
    
    public Integer UserPK.getRoleId() {
        return roleId;
    }
    
    public Integer UserPK.getAccountId() {
        return accountId;
    }
    
}
