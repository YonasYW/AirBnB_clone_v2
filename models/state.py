#!/usr/bin/python3
"""State Module for HBNB project."""
from models.base_model import BaseModel, Base
from sqlalchemy import Column, String
from sqlalchemy.orm import relationship
import os


class State(BaseModel, Base):
    """State class in db."""

    __tablename__ = "states"
    name = Column(String(128), nullable=False)
    cities = relationship("City", back_populates="state",
                          cascade="all, delete, delete-orphan")

    @property
    def cities(self):
        """Get all attribute of cities."""
        from models import storage
        from models.city import City

        all_c = storage.all(City)
        city_l = []
        for i in all_c.values():
            if i.state_id == self.id:
                city_l.append(city)
        return (city_l)
