from django.contrib import admin
from sommelier.models import *

# Register your models here.
admin.site.register(Resenia)



class CertificacionInline(admin.TabularInline):
    model = Certificacion
    extra = 0    

@admin.register(Sommelier)
class SommelierAdmin(admin.ModelAdmin):

    inlines = [
    CertificacionInline,    
    ]

    list_display = (
        'nombre',
        'sommeliervalidado_display',
    )


@admin.register(Certificacion)
class CertificacionAdmin(admin.ModelAdmin):
    list_display = (
        'nombre',
        'sommelier',       
    )

