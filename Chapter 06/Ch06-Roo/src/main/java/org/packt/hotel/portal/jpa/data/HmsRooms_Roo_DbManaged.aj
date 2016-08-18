// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.packt.hotel.portal.jpa.data;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import org.packt.hotel.portal.jpa.data.HmsRoomType;
import org.packt.hotel.portal.jpa.data.HmsRooms;

privileged aspect HmsRooms_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "typeId", referencedColumnName = "id", nullable = false)
    private HmsRoomType HmsRooms.typeId;
    
    @Column(name = "name", length = 45)
    @NotNull
    private String HmsRooms.name;
    
    @Column(name = "description", length = 45)
    private String HmsRooms.description;
    
    public HmsRoomType HmsRooms.getTypeId() {
        return typeId;
    }
    
    public void HmsRooms.setTypeId(HmsRoomType typeId) {
        this.typeId = typeId;
    }
    
    public String HmsRooms.getName() {
        return name;
    }
    
    public void HmsRooms.setName(String name) {
        this.name = name;
    }
    
    public String HmsRooms.getDescription() {
        return description;
    }
    
    public void HmsRooms.setDescription(String description) {
        this.description = description;
    }
    
}